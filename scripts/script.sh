ls
cd ExercicioCI/src
echo "Mailutils"
sudo apt-get install mailutils
echo "Instalação completa"

Email = $Email

echo $Email
echo "Pipeline executado" | mail -s "subject: Atividade CI" "$Email"
