class HomePage < SitePrism::Page

    element :userName, :xpath, "//div[@class='t-16 t-black t-bold']"
    element :navBarHome, :id, "global-nav > div > nav > ul > li:nth-child(1) > a > span"
    element :myIcon, :id, "ember16"

    def checkLoginSuccessful
        expect(userName.text).to eql "William Gomes Novaes da Silva"
        
        expect(myIcon.text).to eql "Eu"
    end    
end    
