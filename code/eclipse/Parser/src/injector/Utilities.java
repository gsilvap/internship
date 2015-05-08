package injector;

import org.eclipse.cdt.core.dom.ast.IASTNode;

public class Utilities {
	static boolean loops(IASTNode node, int index) {
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
	
	static boolean isIfStatement(IASTNode node)
	{
		if (node.getClass().getSimpleName().compareTo("CPPASTIfStatement") == 0
		||  node.getClass().getSimpleName().compareTo("CASTIfStatement") == 0)
			return true;
		return false;
	}
	
	static boolean isBinaryExpression(IASTNode node)
	{
		if (node.getClass().getSimpleName().compareTo("CPPASTBinaryExpression") == 0
		||  node.getClass().getSimpleName().compareTo("CASTBinaryExpression") == 0)
			return true;
		return false;
	}
}
