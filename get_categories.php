<?php
if (isset($_POST['parent'])) {
    $parentId = intval($_POST['parent']);

    $pdo = new PDO('mysql:host=localhost;dbname=basic', 'root', '12345678');

    function getSubcategories($parentId) {
        global $pdo;

        $query = $pdo->prepare("SELECT * FROM categories WHERE parent = ?");
        $query->execute([$parentId]);
        $result = $query->fetchAll(PDO::FETCH_ASSOC);

        $subcategories = [];

        foreach ($result as $row) {
            $subcategories[] = [
                'id' => $row['id'],
                'name' => $row['name'],
                'has_children' => hasChildren($row['id'])
            ];
        }

        return $subcategories;
    }

    function hasChildren($categoryId) {
        global $pdo;

        $query = $pdo->prepare("SELECT COUNT(*) as count FROM categories WHERE parent = ?");
        $query->execute([$categoryId]);
        $result = $query->fetch(PDO::FETCH_ASSOC);

        return ($result['count'] > 0) ? true : false;
    }

    $subcategories = getSubcategories($parentId);

    echo json_encode($subcategories);
}
?>