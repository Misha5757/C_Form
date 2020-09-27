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
using WpfApp1.Models;

namespace WpfApp1.Views.Pages.Adm
{
    /// <summary>
    /// Логика взаимодействия для CratUser.xaml
    /// </summary>
    public partial class CratUser : Page
    {
        public CratUser()
        {
            InitializeComponent();
        }

        private void ButtonCancel_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void ButtonCreate_Click(object sender, RoutedEventArgs e)
        {
          try
            {
                User newUser = new User();
                newUser.Name = txbUsername.Text;
                newUser.Password = txbPassword.Text;
                newUser.IDRole = "U";
                Connectclass.db.User.Add(newUser);
                Connectclass.db.SaveChanges();
                MessageBox.Show("Новый пользователь успешно создан", "Уведомление системы!", MessageBoxButton.OK, MessageBoxImage.Information);
                
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message, ex.Source + "выдал исключение", MessageBoxButton.OK, MessageBoxImage.Error);

            }
        }
    }
}
