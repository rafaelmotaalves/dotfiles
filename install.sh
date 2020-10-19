
for file in dotfiles/.*[a-z]; do
  file_name=$(basename $file)


  if [ -e ~/$home_dotfile ] ||\
       [ -f ~/$home_dotfile ] ||\
       [ -L ~/$home_dotfile ];then
    rm ~/$file_name
  fi
 
  ln -s "$(pwd)/$file" ~/$file_name
done

source ~/.bashrc
