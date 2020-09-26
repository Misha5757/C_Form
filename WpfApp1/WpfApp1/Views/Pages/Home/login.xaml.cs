using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfApp1.Connect;

namespace WpfApp1.Views.Pages.Home
{
    /// <summary>
    /// Логика взаимодействия для login.xaml
    /// </summary>
    public partial class login : Page
    {
        public login()
        {
            InitializeComponent();
        }
        // login
        private void ButtonLogin_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var currentUser = Connectclass.db.User.FirstOrDefault(item => item.Name == txbUsername.Text && item.Password == psbPassword.Password);
                if (currentUser != null)
                    MessageBox.Show("Вы вели неверные данные авторизации! Пожалуйста, повторите попытку", "не верно!",
                        MessageBoxButton.OK, 
                        MessageBoxImage.Exclamation);
                else
                {
                    // Для этого идеально подходит Switch Case
                    switch (currentUser.IDRole)
                    {
                        case "A":
                            MessageBox.Show("Привет Администратор " + currentUser.Name);
                            break;
                        case "U":
                            MessageBox.Show("Привет Пользователь " + currentUser.Name);
                            break;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, ex.Source + "выдал исключение", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            }
        // password
        private void ButtonCancel_Click(object sender, RoutedEventArgs e)
        {
            // выключение
            Application.Current.Shutdown();

        }
    }
}
