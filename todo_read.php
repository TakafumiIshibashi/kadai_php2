<?php



// DB接続情報
$dbn = 'mysql:dbname=gsacf_L05_15;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// DB接続
try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

$sql = "SELECT * FROM kadai_php";

$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

if ($status == false) {
  $error = $stmt->errorInfo(); // データ登録失敗次にエラーを表示 
  exit('sqlError:' . $error[2]);
} else {
 $result = $stmt -> fetchAll(PDO :: FETCH_ASSOC);
  //  var_dump($result);
  //  exit();
  $output = "";
  foreach ($result as $record) {
    $output .= "<tr><td>{$record["name1"]}</td><td>{$record["level"]}</td><td>{$record["icon"]}</td></tr>";
  }
}




?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DB連携型todoリスト（一覧画面）</title>
</head>

<body>
  <fieldset>
    <legend>DB連携型todoリスト（一覧画面）</legend>
    <a href="todo_input.php">入力画面</a>
    <table>
      <thead>
        <tr>
          <th>名前</th>
          <th>レベル</th>
          <th>icon</th>
        </tr>
      </thead>
      <tbody>
        <!-- ここに<tr><td>deadline</td><td>todo</td><tr>の形でデータが入る -->
        <?= $output ?>
      </tbody>
    </table>
  </fieldset>
</body>

</html>