package injector;

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
import org.eclipse.cdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.cdt.core.model.ILanguage;
import org.eclipse.cdt.core.parser.DefaultLogService;
import org.eclipse.cdt.core.parser.FileContent;
import org.eclipse.cdt.core.parser.IParserLogService;
import org.eclipse.cdt.core.parser.IScannerInfo;
import org.eclipse.cdt.core.parser.IncludeFileContentProvider;
import org.eclipse.cdt.core.parser.ScannerInfo;
import org.eclipse.cdt.core.parser.util.ASTPrinter;
import org.eclipse.cdt.internal.core.dom.parser.cpp.CPPASTTranslationUnit;

public class Parser {
	
	static String extension = ".c";
//	static String filename = "./docs/test";
	static String filename = "./docs/helloworld";
//	static String filename = "./docs/mergesort";
//	static String filename = "./docs/mergesortWiki";
	static ArrayList<IASTNode> mifs = new ArrayList<>();

	static IASTTranslationUnit translationUnit;
	
	
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
		ILanguage lang= GPPLanguage.getDefault();
		IASTTranslationUnit ast= lang.getASTTranslationUnit(fileContent, info, emptyIncludes, null, opts, log);
		
//		GPPLanguage.getDefault().get
//		translationUnit = GPPLanguage.getDefault().getASTTranslationUnit(fileContent, info, emptyIncludes, null, opts, log);
			
//		done
//		applyMifs(translationUnit, 1);

//		testing
		mlac(translationUnit, 1);
		
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
//		
//
		printTree(translationUnit, 1);
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
		if (Utilities.isBinaryExpression(node))
		{
			if (node instanceof IASTBinaryExpression){
				newNode = (IASTBinaryExpression) node; 
				System.out.println(newNode.getOperator());
				
//				set methods are mantained because historical reasons only
//				newNode.setOperator(IASTBinaryExpression.op_notequals);
			}
			System.out.println("node");
			System.out.println(node.getRawSignature());
//			
			ASTRewrite r = ASTRewrite.create(newNode.getTranslationUnit());
		
//			r.remove(node, null);

			System.out.println("remove: " + newNode.getRawSignature()); 
			System.out.println("remove: " + ASTPrinter.print(newNode)); 
			    
//			r.remove(node, null);
			r.remove(newNode, new TextEditGroup(null));

			Change change = null;
			
			if (r != null) 
				change = r.rewriteAST();
//			try {
//				change.perform(new NullProgressMonitor());
//			} catch (CoreException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			edits.apply();
			
//			return node;
		}
		for (IASTNode iastNode : children)
		{
			mlac(iastNode, index + 1);
		}
		
//		if (Utilities.isBinaryExpression(node))
//		{
////			System.out.println("if");
//			ArrayList<IASTNode> nodes = new ArrayList<>();
//			for (IASTNode iastNode : children)
//			{
//				IASTNode returnNode = mlac(iastNode, index + 1);
//				if (returnNode != null) nodes.add(returnNode);
////				System.out.println(node);
//			}
////			System.out.println("_______a");
//			for (int i = 0; i < nodes.size(); i++) {
//				System.out.println(nodes.get(i).getRawSignature());
//			}
////			System.out.println("_______b");
//			
////			if (node.getRawSignature().contains("&&"))
////			{
////				
////			}
//		}
		return null;
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

		if (Utilities.isIfStatement(node)
		&&  node.getChildren().length >= 2 
		&&  Constraints.c02(node)
		&&  Constraints.c08(node)
//		0 is binaryExpression (condition) and 1 is the compoundStatement
		&&  Constraints.c09(node.getChildren()[1])) {
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
		&&  Constraints.c08(node)
//		1 because 0 is binaryExpression (condition) and 1 is the compoundStatement
		&&  Constraints.c09(node.getChildren()[1])) {
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
