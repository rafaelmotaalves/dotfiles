
for file in dotfiles/.*[a-z]; do
  file_name=$(basename $file)

  rm ~/$file_name
  
  ln -s "$(pwd)/$file" ~/$file_name
done

source ~/.bashrc