/*
Given the root to a binary tree, implement serialize(root),
which serializes the tree into a string, and deserialize(s),
which deserializes the string back into the tree.
*/

// Given node class
class Node {
	var val: String
	var left: Node? = nil
	var right: Node? = nil

	init(val: String, left: Node? = nil, right: Node? = nil) {
		self.val = val
		self.left = left
		self.right = right
	}

	jsonSerialize() -> String {
		return "{val: }"
	}
}

func serialize(_ maybeNode: Node?) -> String {
	guard let node = maybeNode else { return "[]" }
	return "['\(node.val)':\(serialize(node.left)):\(serialize(node.right))]"
}

func deserialize(_ str: String) -> Node? {
	return Node(val: "")
}

let node = Node(
	val: "root",
	left: Node(val: "left", left: Node(val: "left.left")),
	right: Node(val: "right")
)
if (
	deserialize(serialize(node))?.left?.left?.val == "left.left"
) {
	print("Success!")
} else {
	print("Needs work...")
}
print(serialize(node))

/*
     root
		 |  |
*/