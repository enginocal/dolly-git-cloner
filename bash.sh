# 1. Login with gh
gh auth login

echo "Enter the your organization name"
read org_name

echo "Your organization name $org_name"

gh repo list $org_name --limit 1000 | while read -r repo _; do
  f="${repo/orgname/}"
  folder="D:\Dev/$f"
  gh repo clone "$repo" $folder
done

cmd &
printf 'press [ENTER] to complete'
read _
