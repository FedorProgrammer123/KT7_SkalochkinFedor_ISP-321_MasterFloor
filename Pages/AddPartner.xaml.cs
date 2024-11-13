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

namespace KT7_SkalochkinFedor_ISP_321_MasterFloor.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddPartner.xaml
    /// </summary>
    public partial class AddPartner : Page
    {
        public AddPartner()
        {
            InitializeComponent();
            TypePartner.ItemsSource = Classes.Context.GetContext().partnersImport.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.ModuleForAccountingPartners());
        }

        private void AddPartnerButton_Click(object sender, RoutedEventArgs e)
        {
            if (EnterTitle.Text == "" || EnterTitle.Text == " " || EnterTitle.Text == null)
            {
                string message = "Ошибка! Наименование не заполнено";
                
                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("наименование не введено",message,button,image);
            }
            else if (TypePartner.SelectedItem == null)
            {
                string message = "Ошибка! Тип не выбран";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Тип не выбран", message, button, image);
            }
            else if (EnterRating.Text == "" || EnterRating.Text == " " || EnterRating.Text == null)
            {
                string message = "Ошибка! Рейтинг не указан";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Рейтинг не указан", message, button, image);
            }
            else if (EnterAddress.Text == "" || EnterAddress.Text == " " || EnterAddress.Text == null)
            {
                string message = "Ошибка! Адресс не указан";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Адресс не указан", message, button, image);
            }
            else if (EnterFIODirector.Text == "" || EnterFIODirector.Text == " " || EnterFIODirector.Text == null)
            {
                string message = "Ошибка! ФИО не указан";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("ФИО не указан", message, button, image);
            }
            else if (EnterPhone.Text == "" || EnterPhone.Text == " " || EnterPhone.Text == null)
            {
                string message = "Ошибка! Телефон не указан";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Телефон не указан", message, button, image);
            }
            else if (EnterEmail.Text == "" || EnterEmail.Text == " " || EnterEmail.Text == null)
            {
                string message = "Ошибка! Email не указан";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Email не указан", message, button, image);
            }
            else
            {
                string message = "Успешно добавлен партенер";

                MessageBoxImage image = MessageBoxImage.Information;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Успех", message, button, image);
            }
        }
    }
}
