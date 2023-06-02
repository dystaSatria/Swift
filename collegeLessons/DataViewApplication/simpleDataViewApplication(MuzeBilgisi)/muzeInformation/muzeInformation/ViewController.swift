//
//  ViewController.swift
//  muzeInformation
//
//  Created by Reza Dysta SATRIA on 31.05.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tblview: UITableView!
    var array1 = ["KONYA-MEVLANA MÜZESİ","ANKARA-ANADOLU MEDENİYETLERİ","GAZİANTEP-ZEUGMA MOZAİK MÜZESİ","Bodrum Sualtı Arkeoloji Müzesi","Alacahöyük Müze Ve Ören Yeri","İZMİR-SELÇUK EFES MÜZESİ","Ulucanlar Cezaevi Müzesi","HATAY-HATAY ARKEOLOJİ MÜZESİ",]
    var array2 = ["Bugün müze olarak kullanılmakta olan Mevlâna Dergâhı'nın yeri, Selçuklu Sarayı'nın Gül Bahçesi iken bahçe, Sultan Alâeddin Keykubad tarafından Mevlâna'nın babası Sultânü'l-Ulemâ Bâhaeddin Veled'e hediye edilmiştir. Sultânü'l-Ulemâ 12 Ocak 1231 tarihinde vefat edince türbedeki bugünkü yerine defnedilmiştir. Bu defin gül bahçesine yapılan ilk defindir.","Anadolu Medeniyetleri Müzesi Ankara Ulus'ta Atpazarı olarak adlandırılan semtte, Ankara Kalesi’nin dış duvarının güneydoğu kıyısında yeni işlev verilerek düzenlenmiş iki Osmanlı binasından oluşmaktadır. Bu yapılardan biri Mahmut Paşa Bedesteni, diğeri Kurşunlu Han’dır.","Gaziantep Zeugma Mozaik Müzesi, sanat tarihçileri ve arkeologlar kadar tarihe ve kültüre meraklı her yaştan ziyaretçi için çok önemli ve gözde bir müzedir. Müze, Türkiye’yi ziyaret etmek için tek başına sebep oluşturabilecek bir sanatsal zenginliğe ve çeşitliliğe sahiptir.","Bodrum Kalesi iki liman arasında kayalık bir alan üzerinde kurulmuştur. Antik Çağ'da önce ada olan bu alan sonraları kente bağlanarak yarımada durumuna gelmiştir.","Alacahöyük Ören Yeri Çorum’un Alaca İlçesi, Alacahöyük Beldesi’nde yer alır. Hititler'in önemli bir kültür ve sanat merkezi olan ve 1935 yılında başlayan kazılarda 4 uygarlık açığa çıkarılmıştır.","Efes Müzesi, Efes ve yakın çevresinde bulunan Miken, Arkaik, Klasik, Hellenistik, Roma, Bizans, Selçuklu ve Osmanlı devirlerine ait önemli eserlerin yanı sıra kültürel faaliyetleri ve ziyaretçi kapasitesi ile de Türkiye'nin en önemli müzelerinden biridir. Efes Müzesi'nin ağırlıklı olarak bir antik kentin eserlerini sergileyen müze olması nedeniyle kronolojik ve tipolojik bir sergileme yerine, eserlerin buluntu yerlerine göre sergilenmeleri tercih edilmiştir.","Ulucanlar Cezaevi 1925 yılında kurulmuş olup, 2006 yılında Sincan Cezaevi’ne aktarılarak kapatılmıştır. 2011 yılının Haziran ayında ise Altındağ Belediyesi tarafından onarılmış ve Ulucanlar Cezaevi Müzesi olarak ziyarete açılmıştır.","MÖ 4 binli yıllardan başlayan tarihi geçmişi ile Hatay, birçok dönemin ve medeniyetin kültür ve tarihi vesikalarını bünyesinde toplayan bir şehirdir. Hatay’da kazı çalışmaları 1932 yılında başlamıştır. 1933–1938 yılları arasında Amik Ovası'nda Cüdeyde, Dehep, Çatalhöyük ve Tainat'ta, Chicago Üniversitesi Chicago Oriental Institute tarafından kazı çalışmaları yapılmıştır. 1936 yılında, British Museum adına Sir Leonard Wolley, Samandağı El-Mina Mevkii'nde, 1937'den 1948 senesine kadar da aralıklarla Açana Höyüğü'nde hafriyat ve kazı çalışmaları yürütülmüştür",]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array2.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl1.text = array1[indexPath.row]
        cell.lbl2.text = array2[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail: DetailViewController = self.storyboard?.instantiateViewController(withIdentifier:"DetailViewController") as! DetailViewController
        detail.strlbl1 = array1[indexPath.row]
        detail.strlbl2 = array2[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            tblview.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

