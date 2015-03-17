import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import org.eclipse.cdt.core.dom.ast.ASTVisitor;
import org.eclipse.cdt.core.dom.ast.DOMException;
import org.eclipse.cdt.core.dom.ast.ExpansionOverlapsBoundaryException;
import org.eclipse.cdt.core.dom.ast.IASTAttribute;
import org.eclipse.cdt.core.dom.ast.IASTDeclaration;
import org.eclipse.cdt.core.dom.ast.IASTDeclarator;
import org.eclipse.cdt.core.dom.ast.IASTFunctionDefinition;
import org.eclipse.cdt.core.dom.ast.IASTName;
import org.eclipse.cdt.core.dom.ast.IASTNode;
import org.eclipse.cdt.core.dom.ast.IASTPreprocessorIncludeStatement;
import org.eclipse.cdt.core.dom.ast.IASTSimpleDeclaration;
import org.eclipse.cdt.core.dom.ast.IASTStatement;
import org.eclipse.cdt.core.dom.ast.IASTTranslationUnit;
import org.eclipse.cdt.core.dom.ast.IASTTypeId;
import org.eclipse.cdt.core.dom.ast.IScope;
import org.eclipse.cdt.core.dom.ast.cpp.ICPPASTFunctionDeclarator;
import org.eclipse.cdt.core.dom.ast.cpp.ICPPASTVisibilityLabel;
import org.eclipse.cdt.core.dom.ast.gnu.cpp.GPPLanguage;
import org.eclipse.cdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.cdt.core.parser.DefaultLogService;
import org.eclipse.cdt.core.parser.FileContent;
import org.eclipse.cdt.core.parser.IParserLogService;
import org.eclipse.cdt.core.parser.IScannerInfo;
import org.eclipse.cdt.core.parser.IncludeFileContentProvider;
import org.eclipse.cdt.core.parser.ScannerInfo;
import org.eclipse.cdt.internal.core.dom.parser.cpp.CPPASTFunctionDeclarator;
import org.eclipse.cdt.internal.core.dom.parser.cpp.CPPASTTranslationUnit;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.ltk.core.refactoring.Change;
import org.eclipse.text.edits.TextEditGroup;

public class ParserExample {
	public static void main(String[] args) throws Exception {
		// FileContent fileContent = FileContent.createForExternalFileLocation("./docs/test.c");
		FileContent fileContent = FileContent.createForExternalFileLocation("./docs/helloworld.c");
//		FileContent fileContent = FileContent.createForExternalFileLocation("./docs/mergesort.c");

		
		System.out.println(fileContent);
		System.out.println("-----------------------------------------------------");
		
		
		Map<String,String> definedSymbols = new HashMap<String,String>();
		String[] includePaths = new String[0];
		IScannerInfo info = new ScannerInfo(definedSymbols, includePaths);
		IParserLogService log = new DefaultLogService();

		IncludeFileContentProvider emptyIncludes = IncludeFileContentProvider.getEmptyFilesProvider();
		
		int opts = 8;
		IASTTranslationUnit translationUnit = null;
//		= GPPLanguage.getDefault().getASTTranslationUnit(fileContent, info, emptyIncludes, null, opts, log);

		// System.out.println(GPPLanguage.getDefault().getKeywords());
		// System.out.println(translationUnit.getDeclarations().getClass().getName());

//		IASTPreprocessorIncludeStatement[] includes = translationUnit.getIncludeDirectives();
//		for (IASTPreprocessorIncludeStatement include : includes) {
//			System.out.println("include - " + include.getName());
//		}

		// System.out.println(translationUnit.getFileLocation().getNodeOffset());
		// System.out.println(translationUnit.getFileLocation().getNodeLength());
			
//		TODO arranjar forma de editar a arvore de codigo aplicando 1 operador
//                r.rewriteAST();

//		ModificationCollector mc = new ModificationCollector();
//		ASTRewrite r = mc.rewriterForTranslationUnit(translationUnit);
//		ASTRewriteAnalyzer.rewriteAST(translationUnit, modificationStore, commentMap);
		
//		IASTTranslationUnit unitCopy = translationUnit.copy();
		
//		Change edits = r.rewriteAST();
//		System.out.println(edits);
//		ASTRewrite re= ASTRewrite.create(ast);
//	    IASTNode lit= re.createLiteralNode("#pragma xxx\n");
//	    re.insertBefore(belowNode, beforeNode lit, null);
//	    Change change= re.rewriteAST(); 
//	    change.perform(new NullProgressMonitor());
	    
//		mc.createFinalChange();
		
//		rewrite.rewriteAST();
		try {
			translationUnit = GPPLanguage.getDefault().getASTTranslationUnit(fileContent, info, emptyIncludes, null, opts, log);
//			ASTRewrite rewrite = ASTRewrite.create(translationUnit);
			
			IASTNode node = mifs(translationUnit, 1);
			System.out.println("code to remove:\n"+ node.getRawSignature());
//			rewrite.remove(node, null);
//			rewrite.rewriteAST();
			
//			System.out.println(translationUnit.getRawSignature());
			String result = translationUnit.getRawSignature().substring(0, node.getFileLocation().getNodeOffset());
			result = result.concat(translationUnit.getRawSignature().substring(node.getFileLocation().getNodeOffset()+node.getFileLocation().getNodeLength()+1));
			
//			replace(node.getRawSignature(), "");
			
			
//			System.out.println(translationUnit.getRawSignature().substring(node.getFileLocation().getNodeOffset(), node.getFileLocation().getNodeOffset()+node.getFileLocation().getNodeLength()+1));
			System.out.println("result\n"+result);
//			Change change = rewrite.rewriteAST();
//			change.perform(new NullProgressMonitor());
		} catch (Exception e) {
			e.printStackTrace();
//			System.exit(0);
			// TODO: handle exception
		}
		
	
		
		
		
//		Change change = rewrite.rewriteAST();
//        Document document = new Document(translationUnit.getRawSignature());
//        rewrite.create(translationUnit);
//		Document document = new Document(fileContent.toString());
//		change.perform(null);
//		document.apply(edits);
//        edits.perform( document);
//		System.out.println(translationUnit.copy().getRawSignature());
//		ASTRewrite cenas = ASTRewrite.create(translationUnit.copy());
//		IASTTranslationUnit ast = getAst();
//		ASTRewrite r = mc.rewriterForTranslationUnit(ast);
//		performChange(rewrite.rewriteAST() );
//		Change change= rewrite.rewriteAST(); 
		
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
		

		printTree(translationUnit, 1);

		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");

		ASTVisitor visitor = new ASTVisitor() {
			public int visit(IASTName name) {
				// System.out.println(name.getParent().getClass().getDeclaredMethods());

				if ((name.getParent() instanceof CPPASTFunctionDeclarator)) {
					System.out.println("IASTName: " + name.getClass().getSimpleName() + "(" + name.getRawSignature() + ") - > parent: " + name.getParent().getClass().getSimpleName());
//					 System.out.println("-- isVisible: " + ParserExample.isVisible(name));
				}

				return 3;
			}

			public int visit(IASTDeclaration declaration) {
				System.out.println("declaration: " + declaration + " ->  " + declaration.getRawSignature());

				if ((declaration instanceof IASTSimpleDeclaration)) {
					IASTSimpleDeclaration ast = (IASTSimpleDeclaration) declaration;
					try {
						System.out.println("--- type: " + ast.getSyntax() + " (childs: " + ast.getChildren().length + ")");
						IASTNode typedef = ast.getChildren().length == 1 ? ast.getChildren()[0] : ast.getChildren()[1];
						System.out.println("------- typedef: " + typedef);
						IASTNode[] children = typedef.getChildren();
						if ((children != null) && (children.length > 0))
							System.out.println("------- typedef-name: " + children[0].getRawSignature());
					} catch (ExpansionOverlapsBoundaryException e) {
						e.printStackTrace();
					}

					IASTDeclarator[] declarators = ast.getDeclarators();
					for (IASTDeclarator iastDeclarator : declarators) {
						System.out.println("iastDeclarator > " + iastDeclarator.getName());
					}

					IASTAttribute[] attributes = ast.getAttributes();
					for (IASTAttribute iastAttribute : attributes) {
						System.out.println("iastAttribute > " + iastAttribute);
					}

				}

				if ((declaration instanceof IASTFunctionDefinition)) {
					IASTFunctionDefinition ast = (IASTFunctionDefinition) declaration;
					IScope scope = ast.getScope();
					try {
						System.out.println("### function() - Parent = " + scope.getParent().getScopeName());
						System.out.println("### function() - Syntax = " + ast.getSyntax());
					} catch (DOMException e) {
						e.printStackTrace();
					} catch (ExpansionOverlapsBoundaryException e) {
						e.printStackTrace();
					}
					ICPPASTFunctionDeclarator typedef = (ICPPASTFunctionDeclarator) ast.getDeclarator();
					System.out.println("------- typedef: " + typedef.getName());
				}

				return 3;
			}

			public int visit(IASTTypeId typeId) {
				System.out.println("typeId: " + typeId.getRawSignature());
				return 3;
			}

//			CPPASTIfStatement
			public int visit(IASTStatement statement) {
//				System.out.println("statement: " + statement.getRawSignature());
				return 3;
			}

			public int visit(IASTAttribute attribute) {
				return 3;
			}
		};
		visitor.shouldVisitNames = true;
		visitor.shouldVisitDeclarations = false;

		visitor.shouldVisitDeclarators = true;
		visitor.shouldVisitAttributes = true;
		// visitor.shouldVisitStatements = false;
		visitor.shouldVisitStatements = true;

		visitor.shouldVisitTypeIds = true;

		translationUnit.accept(visitor);

	}

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

//	private static ASTRewrite mifs(IASTNode node, int index, ASTRewrite r) {
//		IASTNode[] children = node.getChildren();
//
//		if (node.getClass().getSimpleName().compareTo("CPPASTIfStatement") == 0 && children.length <= 2) {
////			System.out.println(node.getClass().getName());
//			System.out.println(node.getClass().getSimpleName());
//
//			r.remove(node, new TextEditGroup(node.getRawSignature()));
//			
////			for (int i = 0; i < children.length; i++) {
////				System.out.println(children[i].getRawSignature());
////			}
//
//			System.out.println("code to remove:\n" + node.getRawSignature());
//
////	        // this is the code for adding statements
////	        unit.getBuffer().setContents(document.get());
////	        unit.getBuffer().close();
//			return r;
//			
//		}
//		else {
//			for (IASTNode iastNode : children)
//				mifs(iastNode, index + 1, r);
//		}
////		else
////			System.out.println("code to remove:\n" + node.getRawSignature());
//		return r;
//	}
	
//	private static IASTNode mifs(ASTRewrite node, int index, ASTRewrite r) {
//		IASTNode[] children = node.getChildren();
//		IASTNode returnNode = null;
//
//		if (node.getClass().getSimpleName().compareTo("CPPASTIfStatement") == 0 && children.length <= 2) {
////			System.out.println(node.getClass().getName());
////			System.out.println(node.getClass().getSimpleName());
////			System.out.println("code to remove:\n" + node.getRawSignature());
//			return node;
//		}
//		else {
//			for (IASTNode iastNode : children)
//			{
//				returnNode = mifs(iastNode, index + 1, r);
//				if (returnNode != null)
//					return returnNode;
//			}
//		}
//		
//		return null;
//	}
	
	private static IASTNode mifs(IASTNode node, int index) {
		IASTNode[] children = node.getChildren();
		IASTNode returnNode = null;

		if (node.getClass().getSimpleName().compareTo("CPPASTIfStatement") == 0 && children.length <= 2) {
//			System.out.println(node.getClass().getName());
//			System.out.println(node.getClass().getSimpleName());
//			System.out.println("code to remove:\n" + node.getRawSignature());
			return node;
		}
		else {
			for (IASTNode iastNode : children)
			{
				returnNode = mifs(iastNode, index + 1, r);
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

/*
 * Location:
 * /media/Dados/Codigos/C_Plus/Projetos/eclipse-cdt-standalone-astparser/bin/
 * Qualified Name: ParserExample JD-Core Version: 0.6.0
 */