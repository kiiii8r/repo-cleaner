# .envファイルを読み込み
source ./.env

# target_list.txtからリポジトリ名を読み込み、削除を実行
while read line do
  set reponame $USER_NAME"/"$line
  gh repo delete $reponame --yes
  echo "Delete "$reponame
end < target_list.txt
