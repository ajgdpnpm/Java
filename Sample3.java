import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class Sample3 {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/test";
        String username = "root";
        String password = "＊＊＊＊＊＊＊＊";

        try (Connection conn = DriverManager.getConnection(url, username, password)) {
            // ランダムに1問の問題を取得するクエリ
            String query = "SELECT * FROM questions ORDER BY RAND() LIMIT 1";

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            if (rs.next()) {
                int questionNumber = rs.getInt("question_number");
                String questionText = rs.getString("question_text");
                String correctAnswer = rs.getString("correct_answer");
                String optionA = rs.getString("option_a");
                String optionB = rs.getString("option_b");
                String optionC = rs.getString("option_c");
                String optionD = rs.getString("option_d");

                // 問題を表示
                System.out.println("問題番号: " + questionNumber);
                System.out.println("問題文: " + questionText);
                System.out.println("選択肢A: " + optionA);
                System.out.println("選択肢B: " + optionB);
                System.out.println("選択肢C: " + optionC);
                System.out.println("選択肢D: " + optionD);

                // ユーザーからの解答入力
                Scanner scanner = new Scanner(System.in);
                System.out.print("解答を選択してください (A/B/C/D): ");
                String userAnswer = scanner.nextLine();

                // 正解判定
                if (userAnswer.equalsIgnoreCase(correctAnswer)) {
                    System.out.println("正解です！");
                } else {
                    System.out.println("不正解です。正解は " + correctAnswer + " です。");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
