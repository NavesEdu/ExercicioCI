ls
cd src
echo "Instalar mailutils"
sudo apt-get install mailutils

Email = $Email

echo "Mandando e-mail com o mail do linux" | mail -s "subject: CI" "$Email"
