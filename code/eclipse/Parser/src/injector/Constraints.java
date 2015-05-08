package injector;

import org.eclipse.cdt.core.dom.ast.IASTNode;
import injector.Utilities;

public class Constraints {
	/*****************************************************************
	 * Constraints
	 * c01
	 * c02 - done
	 * c03
	 * c04
	 * c05
	 * c06
	 * c07
	 * c08 - done
	 * c09 - done
	 * c10
	 * c11
	 ****************************************************************/
		
//		Need to have more than 1 statement in block
		static boolean c02(IASTNode node)
		{
			IASTNode parent = node.getParent();
			if (parent != null && parent.getChildren() != null && parent.getChildren().length > 1)
				return true;
			return false;
		}
		
//		Must not be associated to an else construct, have only a BinaryExpression and a CompoundStatement
//		The parent must not be an IfStatement
		static boolean c08(IASTNode node)
		{
			IASTNode[] children = node.getChildren();
			if (children.length <= 2 && !Utilities.isIfStatement(node.getParent()))
				return true;
			return false;
		}
		
//		Must not include loops and not include more than five statements
		static boolean c09(IASTNode node)
		{
			if (!Utilities.loops(node, 1) && node.getChildren().length <= 5)
				return true;
			return false;
		}
}
