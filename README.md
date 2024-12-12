# GitHubリポジトリ一括削除スクリプト
このスクリプトは、不要なGitHubリポジトリを簡単に削除するためのものです。

## 事前準備
- Fishシェルのインストール
- GitHub CLIのインストール

## 使用方法

1. **対象ファイルの作成**  
   `.env`を作成します。

2. **ユーザーネームの設定**  
   `.env`ファイルに自分のGitHubユーザーネームを追加します。以下のように記述してください。
   ```bash
   set USER_NAME <GitHubユーザーネーム>
   ```

3. **リポジトリリストの取得**  
   GitHub CLIを使用して、`repo_list.txt`にリポジトリ名を取得します。
   ```bash
   gh repo list --json name --jq '.[].name' >> repo_list.txt
   ```

4. **削除対象の選定**  
   `repo_list.txt`から、削除したいリポジトリを`target_list.txt`に移動します。

5. **リポジトリの削除**  
   以下のコマンドを実行して、選定したリポジトリを削除します。
   ```bash
   fish delete_repo.sh
   ```