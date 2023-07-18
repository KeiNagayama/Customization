# Customization

Date: 2023/07/19

1. aptパッケージを入れる

```sh
sudo apt update
sudo apt install exa bat git g++
```

2. 設定ファイルをダウンロード

```sh
git clone https://github.com/KeiNagayama/Customization.git
```

3. 各種設定ファイルを判定

```sh
cd Customization/rc
bash vim/setup_vim.sh
bash starhip/install_starship.sh
bash fish/install_fish.sh
```

4. Shellをfishに変える

```sh
fish
sudo chsh -s (which fish)
```

5. Conda環境を入れる

```sh
bash conda/install_conda.sh
conda init fish
```



