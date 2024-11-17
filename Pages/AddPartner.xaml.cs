using KT7_SkalochkinFedor_ISP_321_MasterFloor.DataBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Text.RegularExpressions;
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
                string message = "";
                
                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Ошибка! Наименование не заполнено", message,button,image);
            }
            else if (TypePartner.SelectedItem == null)
            {
                string message = "";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Ошибка! Тип не выбран", message, button, image);
            }
            else if (EnterRating.Text == "" || EnterRating.Text == " " || EnterRating.Text == null)
            {
                string message = "";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Ошибка! Рейтинг не указан", message, button, image);
            }
            else if (EnterPostIndex.Text == "" || EnterPostIndex.Text == " " || EnterPostIndex.Text == null || EnterPostIndex.Text.Length < 6)
            {
                string message = "";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Почтовый индекс не введён или его длинна меньше 6 символов", message, button, image);
            }
            else if (EnterRegion.Text == "" || EnterRegion.Text == " " || EnterRegion.Text == null)
            {
                string message = "";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Регион не введён", message, button, image);
            }
            else if (EnterCity.Text == "" || EnterCity.Text == " " || EnterCity.Text == null)
            {
                string message = "";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Город не введён", message, button, image);
            }
            else if (EnterStreet.Text == "" || EnterStreet.Text == " " || EnterStreet.Text == null)
            {
                string message = "";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Улица не введена", message, button, image);
            }
            else if (EnterHouse.Text == "" || EnterHouse.Text == " " || EnterHouse.Text == null)
            {
                string message = "";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Дом не введен", message, button, image);
            }
            else if (EnterFIODirector.Text == "" || EnterFIODirector.Text == " " || EnterFIODirector.Text == null)
            {
                string message = "";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Ошибка! ФИО не указан", message, button, image);
            }
            else if (EnterPhone.Text == "" || EnterPhone.Text == " " || EnterPhone.Text == null || !Regex.IsMatch(EnterPhone.Text, @"^\+?7\s?\((\d{3})\)\s?(\d{3})-?(\d{2})-?(\d{2})$"))
            {
                string message = "";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Ошибка! Телефон не указан или имеет неверный формат", message, button, image);
            }
            else if (EnterEmail.Text == "" || EnterEmail.Text == " " || EnterEmail.Text == null || !Regex.IsMatch(EnterEmail.Text, @"^[\w!#$%&'*+\-/=?\^_`{|}~]+(\.[\w!#$%&'*+\-/=?\^_`{|}~]+)*@[\w\-]+(\.[\w\-]+)+$") || EnterEmail.Text == "" || EnterEmail.Text == " ")
            {
                string message = "";

                MessageBoxImage image = MessageBoxImage.Error;
                MessageBoxButton button = MessageBoxButton.OK;
                MessageBoxResult result = MessageBox.Show("Email не указан или имеет неверный формат", message, button, image);
            }
            else
            {
                using (var model = new Classes.Context())
                {
                    var PartnerTypeID = Classes.Context.GetContext().partnersType.FirstOrDefault(u => u.TypePartner == TypePartner.Text)?.IDType ?? -1;
                    var PartnerTitleID = Classes.Context.GetContext().partnersTitle.FirstOrDefault(u => u.TitlePartner == EnterTitle.Text)?.IDPartner ?? -1;
                    var PartnerDirectorID = Classes.Context.GetContext().DirectorName.FirstOrDefault(u => u.Director == EnterFIODirector.Text)?.IDDirector ?? -1;
                    var PartnerEmailID = Classes.Context.GetContext().partnersImport.FirstOrDefault(u => u.EmailPartner == EnterEmail.Text)?.IDPartners ?? -1;
                    var PartnerPhoneID = Classes.Context.GetContext().partnersImport.FirstOrDefault(u => u.PhonePartner == EnterPhone.Text)?.IDPartners ?? -1;
                    var PostIndexID = Classes.Context.GetContext().postindex.FirstOrDefault(u => u.PostIndex1 == EnterPostIndex.Text)?.IDPostIndex ?? -1;
                    var RegionID = Classes.Context.GetContext().region.FirstOrDefault(u => u.Region1 == EnterRegion.Text)?.IDRegion ?? -1;
                    var CityID = Classes.Context.GetContext().city.FirstOrDefault(u => u.City1 == EnterCity.Text)?.IDCity ?? -1;
                    var StreetID = Classes.Context.GetContext().street.FirstOrDefault(u => u.Street1 == EnterStreet.Text)?.IDStreet ?? -1;
                    var HouseID = Classes.Context.GetContext().address.FirstOrDefault(u => u.House == EnterHouse.Text)?.IDAddress ?? -1;
                    var PartnerRatingID = Classes.Context.GetContext().partnersImport.FirstOrDefault(u => u.Rating == EnterRating.Text)?.IDPartners ?? -1;
                    if (PartnerTypeID != -1 && PartnerTitleID != -1 && PartnerDirectorID != -1 && PartnerEmailID != -1 && PartnerPhoneID != -1 && PostIndexID != -1 && RegionID != -1 && CityID != -1 && StreetID != -1 && HouseID != -1 && PartnerRatingID != -1)
                    {
                        var address = new Address()
                        {
                            PostIndex = PostIndexID,
                            Region = RegionID,
                            City = CityID,
                            Street = StreetID,
                            House = EnterHouse.Text
                        };
                        var partnersImport = new PartnersImport()
                        {
                            TypePartner = PartnerTypeID,
                            TitlePartner = PartnerTitleID,
                            Director = PartnerDirectorID,
                            EmailPartner = EnterEmail.Text,
                            PhonePartner = EnterPhone.Text,
                            Address = CityID,
                            Rating = EnterRating.Text
                        };
                        Classes.Context.GetContext().address.Add(address);
                        Classes.Context.GetContext().partnersImport.Add(partnersImport);
                        Classes.Context.GetContext().SaveChanges();
                        string message = "";
                        MessageBoxImage image = MessageBoxImage.Information;
                        MessageBoxButton button = MessageBoxButton.OK;
                        MessageBoxResult result = MessageBox.Show("Успешно добавлен партенер", message, button, image);
                    }
                    else
                    {
                        MessageBox.Show("Ошибка добавления");
                    }
                }
                
            }
        }
    }
}
