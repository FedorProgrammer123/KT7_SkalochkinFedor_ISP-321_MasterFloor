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
    }
}
