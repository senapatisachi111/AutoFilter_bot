if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/senapatisachi111/AutoFilter_bot /AutoFilter_bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AutoFilter_bot
fi
cd /AutoFilter_bot
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
