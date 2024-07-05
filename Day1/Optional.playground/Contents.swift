import UIKit

//Optional (başka dillerde Nullable veya Null Safety olarak biliniyor

var mesaj = "Merhaba" //normal bir tanımlama şekli fakat null olursa sıkıntı çıkar

//nil (Başka dillerde null olarak bilinir

var str :String?    //Burada str adındaki değişkene değer ataması yapmadık. Türünü string olarak belirttik ve sonuna ünlem koyarak dikkat et nil olabilir dedik.

str = "Merhaba"

if str != nil {
    print(str!) //unwrap (bu ifadeyi optional biçimden çıkarmak için sonuna ünlem koyduk
}
else{
    print("str nil değer içeriyor")
}

//Optional binding (nil problemi yaşamamak için bunu kontrol etme yöntemi

if let temp = str {
    print(temp) //otomatik unwrap (burada ünlem koymaya gerek yok
}
else{
    print("Str nil içeriyor")
}

if var temp = str {
    print(temp) //otomatik unwrap (burada ünlem koymaya gerek yok
}
else {
    print("Str nil içeriyor")
}
