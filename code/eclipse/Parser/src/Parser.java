import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.eclipse.cdt.core.dom.ast.ExpansionOverlapsBoundaryException;
import org.eclipse.cdt.core.dom.ast.IASTBinaryExpression;
import org.eclipse.cdt.core.dom.ast.IASTNode;
import org.eclipse.cdt.core.dom.ast.IASTTranslationUnit;
import org.eclipse.cdt.core.dom.ast.cpp.ICPPASTVisibilityLabel;
import org.eclipse.cdt.core.dom.ast.gnu.cpp.GPPLanguage;
import org.eclipse.cdt.core.parser.DefaultLogService;
import org.eclipse.cdt.core.parser.FileContent;
import org.eclipse.cdt.core.parser.IParserLogService;
import org.eclipse.cdt.core.parser.IScannerInfo;
import org.eclipse.cdt.core.parser.IncludeFileContentProvider;
import org.eclipse.cdt.core.parser.ScannerInfo;
import org.eclipse.cdt.internal.core.dom.parser.cpp.CPPASTTranslationUnit;

public class Parser {
	
	static String extension = ".c";
//	static String filename = "./docs/test";
//	static String filename = "./docs/helloworld";
	static String filename = "./docs/mergesort";
	static ArrayList<IASTNode> mifs = new ArrayList<>();

/*****************************************************************
 * Constraints
 * c01
 * c02
 * c03
 * c04
 * c05
 * c06
 * c07
 * c08
 * c09
 * c10
 * c11
 ****************************************************************/
	
//	Need to have more than 1 statement in block
	private static boolean c02(IASTNode node)
	{
		IASTNode parent = node.getParent();
		if (parent != null && parent.getChildren() != null && parent.getChildren().length > 1)
			return true;
		return false;
	}
	
//	Must not be associated to an else construct, have only a BinaryExpression and a CompoundStatement
//	The parent must not be an IfStatement
	private static boolean c08(IASTNode node)
	{
		IASTNode[] children = node.getChildren();
		if (children.length <= 2 && !isIfStatement(node.getParent()))
			return true;
		return false;
	}
	
//	Must not include loops and not include more than five statements
	private static boolean c09(IASTNode node)
	{
		if (!loops(node, 1) && node.getChildren().length <= 5)
			return true;
		return false;
	}
	
	
	public static void main(String[] args) throws Exception {
		
		FileContent fileContent = FileContent.createForExternalFileLocation(filename + extension);
		
		System.out.println(fileContent);
		System.out.println("-----------------------------------------------------");
		
		
		Map<String,String> definedSymbols = new HashMap<String,String>();
		String[] includePaths = new String[0];
		IScannerInfo info = new ScannerInfo(definedSymbols, includePaths);
		IParserLogService log = new DefaultLogService();

		IncludeFileContentProvider emptyIncludes = IncludeFileContentProvider.getEmptyFilesProvider();
		
		int opts = 8;
		IASTTranslationUnit translationUnit = GPPLanguage.getDefault().getASTTranslationUnit(fileContent, info, emptyIncludes, null, opts, log);
			
		applyMifs(translationUnit, 1);
//		mlac(translationUnit, 1);
		
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
//		
//
//		printTree(translationUnit, 1);
	}
	
	private static void applyMifs(IASTTranslationUnit translationUnit, int i) {
		
		mifs(translationUnit, 1);
		for (int j = 0; j < mifs.size(); j++) {
			if (mifs.get(j) != null)
			{
				System.out.println("code to remove:\n"+ mifs.get(j).getRawSignature());
				String result = translationUnit.getRawSignature().substring(0, mifs.get(j).getFileLocation().getNodeOffset());
				result = result.concat(translationUnit.getRawSignature().substring(mifs.get(j).getFileLocation().getNodeOffset()+mifs.get(j).getFileLocation().getNodeLength()));
				
				System.out.println("result\n"+result);
				String outputFile = filename+"._MIFS_"+j+extension;
				try {
					write(result, new File(outputFile));
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				         
	            String cmd = "diff -u "+filename+extension+" "+outputFile+" > "+filename+"._MIFS_"+j+".patch";
				runCmd(cmd);
			}
		}
	}

	private static ArrayList<String> runCmd(String cmd)
	{
		ArrayList<String> resultConsole = new ArrayList<String>();
        String s = "";
        Process p;
		try {
			p = Runtime.getRuntime().exec(new String[]{"bash","-c",cmd});
			BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
			while ((s = br.readLine()) != null) {
				System.out.println(s);
				resultConsole.add(s);
			}
			p.waitFor();
			int exitValue = p.exitValue();
			System.out.println("exitValue: "+exitValue);
			p.destroy();
			resultConsole.add(Integer.toString(exitValue));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultConsole;
	}
	
	// Helper method for get the file content
//    private static List<String> fileToLines(String filename) {
//            List<String> lines = new LinkedList<String>();
//            String line = "";
//            try {
//                    BufferedReader in = new BufferedReader(new FileReader(filename));
//                    while ((line = in.readLine()) != null) {
//                            lines.add(line);
//                    }
//            } catch (IOException e) {
//                    e.printStackTrace();
//            }
//            return lines;
//    }

	private static void printTree(IASTNode node, int index) {
		IASTNode[] children = node.getChildren();

		boolean printContents = true;

		if ((node instanceof CPPASTTranslationUnit)) {
			printContents = false;
		}

		String offset = "";
		try {

//			IASTNode test = node.copy();

			offset = node.getSyntax() != null ? " (offset: " + node.getFileLocation().getNodeOffset() + "," + node.getFileLocation().getNodeLength() + ")" : "";
			printContents = node.getFileLocation().getNodeLength() < 30;
		} catch (ExpansionOverlapsBoundaryException e) {
			e.printStackTrace();
		} catch (UnsupportedOperationException e) {
			offset = "UnsupportedOperationException";
		}

		if (node.getRawSignature().indexOf("\n") != -1)
			System.out.println(String.format(new StringBuilder("%1$").append(index * 2).append("s").toString(), new Object[] { "-" }) + node.getClass().getSimpleName() + offset + " -> "
					+ (printContents ? node.getRawSignature().replaceAll("\n", " \\ ") : node.getRawSignature().subSequence(0, node.getRawSignature().indexOf("\n"))));
		else
			System.out.println(String.format(new StringBuilder("%1$").append(index * 2).append("s").toString(), new Object[] { "-" }) + node.getClass().getSimpleName() + offset + " -> "
					+ (printContents ? node.getRawSignature().replaceAll("\n", " \\ ") : node.getRawSignature().subSequence(0, 5)));

		for (IASTNode iastNode : children)
			printTree(iastNode, index + 1);
	}

	public static boolean isVisible(IASTNode current) {
		IASTNode declator = current.getParent().getParent();
		IASTNode[] children = declator.getChildren();

		for (IASTNode iastNode : children) {
			if ((iastNode instanceof ICPPASTVisibilityLabel)) {
				return 1 == ((ICPPASTVisibilityLabel) iastNode).getVisibility();
			}
		}

		return false;
	}
	

	
//	private static IASTNode mifsCycle(IASTNode node, int index) {
//		boolean cycleFlag = false;
//		IASTNode[] children = node.getChildren();
//		for (IASTNode iastNode : children)
//		{
//			mifs(iastNode, index + 1);
//		}
//		
//	}
	
	private static IASTNode mlac(IASTNode node, int index) {
		IASTNode[] children = node.getChildren();
		IASTBinaryExpression newNode = null;
		if (isBinaryExpression(node) && isBinaryExpression(node.getParent()) && isIfStatement(node.getParent().getParent()))
		{
			if (node instanceof IASTBinaryExpression){
				newNode = (IASTBinaryExpression) node; 
				System.out.println(newNode.getOperator());
			}
			System.out.println("node");
			System.out.println(node.getRawSignature());
			return node;
		}
		
		if (isBinaryExpression(node))
		{
//			System.out.println("if");
			ArrayList<IASTNode> nodes = new ArrayList<>();
			for (IASTNode iastNode : children)
			{
				IASTNode returnNode = mlac(iastNode, index + 1);
				if (returnNode != null) nodes.add(returnNode);
//				System.out.println(node);
			}
//			System.out.println("_______a");
			for (int i = 0; i < nodes.size(); i++) {
				System.out.println(nodes.get(i).getRawSignature());
			}
//			System.out.println("_______b");
			
//			if (node.getRawSignature().contains("&&"))
//			{
//				
//			}
		}
		for (IASTNode iastNode : children)
		{
			mlac(iastNode, index + 1);
		}
		return null;
	}
	
	private static boolean isIfStatement(IASTNode node)
	{
		if (node.getClass().getSimpleName().compareTo("CPPASTIfStatement") == 0
		||  node.getClass().getSimpleName().compareTo("CASTIfStatement") == 0)
			return true;
		return false;
	}
	
	private static boolean isBinaryExpression(IASTNode node)
	{
		if (node.getClass().getSimpleName().compareTo("CPPASTBinaryExpression") == 0
		||  node.getClass().getSimpleName().compareTo("CASTBinaryExpression") == 0)
			return true;
		return false;
	}
	
	
/*****************************************************************
 * Operators
 * mifs
 * mia
 * 
 * 
 *****************************************************************/
	private static void mifs(IASTNode node, int index) {
		IASTNode[] children = node.getChildren();
		IASTNode returnNode = null;
		
//		if (node.getClass().getSimpleName().compareTo("CPPASTIfStatement") == 0)
//		{
//			System.out.println("c02"+ c02(node));
//			System.out.println("c08"+ c08(node));
//			if (node.getChildren().length >= 2) System.out.println("c09"+ c09(node.getChildren()[1]));
//		}

		if (isIfStatement(node)
		&&  node.getChildren().length >= 2 
		&&  c02(node)
		&&  c08(node)
//		0 is binaryExpression (condition) and 1 is the compoundStatement
		&&  c09(node.getChildren()[1])) {
			mifs.add(node);
//			for (int i = 0; i < children.length; i++) {
//				System.out.println(children[i].getRawSignature());
//			}
			
//			System.out.println(node.getClass().getName());
//			System.out.println(node.getClass().getSimpleName());
//			System.out.println("code to remove:\n" + node.getRawSignature());
//			return node;
		}
//		else {
			for (IASTNode iastNode : children)
			{
//				returnNode = 
				mifs(iastNode, index + 1);
//				if (returnNode != null)
//					return returnNode;
			}
//		}
//		return null;
	}
	
	private static IASTNode mia(IASTNode node, int index) {
		IASTNode[] children = node.getChildren();
		IASTNode returnNode = null;
		
		if (node.getClass().getSimpleName().compareTo("CPPASTIfStatement") == 0 
		&&  node.getChildren().length >= 2 
		&&  c08(node)
//		1 because 0 is binaryExpression (condition) and 1 is the compoundStatement
		&&  c09(node.getChildren()[1])) {
			return node;
		}
		else {
			for (IASTNode iastNode : children)
			{
				returnNode = mia(iastNode, index + 1);
				if (returnNode != null)
					return returnNode;
			}
		}
		return null;
	}
	
	private static boolean loops(IASTNode node, int index) {
		IASTNode[] children = node.getChildren();
		boolean returnFlag;
		
		if (node.getClass().getSimpleName().compareTo("CPPASTForStatement"  ) == 0
		||  node.getClass().getSimpleName().compareTo("CPPASTWhileStatement") == 0
		||  node.getClass().getSimpleName().compareTo("CPPASTDoStatement"   ) == 0) {
			return true;
		}
		else {
			for (IASTNode iastNode : children)
			{
				returnFlag = loops(iastNode, index + 1);
				if (returnFlag)
					return returnFlag;
			}
		}
		return false;
	}
	
	
	
	public static void write(String content, File file)
	        throws IOException {
	    // create file if it necessary
	    if (!file.exists()) {
	        file.createNewFile();
	    }
	    // write to file
	    // Use printwriter with buffered writer is faster than FileWriter
	    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(file)));
	    out.write(content);

	    out.close();
	}
}
