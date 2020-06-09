// Learn more about F# at http://fsharp.org

// Learn more about F# at http://fsharp.org

open System
open System.Windows.Forms
open System.Drawing

let form1 = new Form(Width= 400, Height = 300, Text = "Главное меню", Menu = new MainMenu())

let mForms1 = form1.Menu.MenuItems.Add("&Ссылка на картинку №1")
let mForms2 = form1.Menu.MenuItems.Add("&Ссылка на картинку №2")

let open1 = new MenuItem("&Открыть")
let open2 = new MenuItem("&Открыть")
mForms1.MenuItems.Add(open1)
mForms2.MenuItems.Add(open2)

let  image1 = new PictureBox(SizeMode = PictureBoxSizeMode.AutoSize, Top = 100, Left = 50)
let  image2 = new PictureBox(SizeMode = PictureBoxSizeMode.AutoSize, Top = 100, Left = 50)
image1.ImageLocation <- "1.PNG"
image2.ImageLocation <- "2.PNG"

let form2 = new Form(Width= 400, Height = 300,Text = "Первая картинка.")
let form3 = new Form(Width= 400, Height = 300,Text = "Вторая картинка.")
form2.Controls.Add(image1)
form3.Controls.Add(image2)

let opForm2 _ = do form2.ShowDialog()
let opForm3 _ = do form3.ShowDialog()

let _ = open1.Click.Add(opForm2)
let _ = open2.Click.Add(opForm3)


do Application.Run(form1)