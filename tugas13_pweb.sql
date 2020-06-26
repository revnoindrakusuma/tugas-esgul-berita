-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: tugas13_pweb
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `berita`
--

DROP TABLE IF EXISTS `berita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(250) DEFAULT NULL,
  `deskripsi` text,
  `foto` varchar(50) DEFAULT NULL,
  `dibaca` int(11) DEFAULT NULL,
  `tgl_upload` datetime DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita`
--

LOCK TABLES `berita` WRITE;
/*!40000 ALTER TABLE `berita` DISABLE KEYS */;
INSERT INTO `berita` VALUES (1,'Chelsea Vs Man City: The Blues Menang, Liverpool Segel Trofi','London - Chelsea mengalahkan Manchester City 2-1 di pekan ke-31 Liga Inggris. Hasil itu membantu Liverpool menyegel gelar juara Premier League pertamanya.&nbsp;<div><br></div><div>Di Stamford Bridge, London, Jumat (26/6/2020) dini hari WIB, Chelsea memimpin sejak babak pertama. Christian Pulisic memberi keunggulan di menit ke-36.&nbsp;</div><div><br></div><div>City sempat membalas lewat gol tendangan bebas Kevin de Bruyne di menit ke-55, namun penalti Willian di menit ke-78 memastikan kemenangan tuan rumah.</div><div><br></div><div>Kemenangan ini membuat Chelsea masih di peringkat empat klasemen Liga Inggris dengan 54 poin dari 31 laga. Adapun City di peringkat dua dengan 63 poin.&nbsp;</div><div><br></div><div>Bagi City, kekalahan ini memastikan gelar juaranya pindah ke Liverpool. Pasalnya, Mohamed Salah dkk sudah punya raihan 86 poin, takkan terkejar lagi di sisa tujuh pertandingan. Hasil ini memastikan The Reds menyegel gelar juara Premier League pertamanya.</div>','cvmc.jpeg',1,'2020-06-26 13:03:31',1),(2,'Rekomendasi Saham dan Pergerakan IHSG Hari Ini, 26 Juni 2020','<p>JAKARTA â€” Indeks harga saham gabungan akan kembali mencoba melawan prediksi dari Dana Moneter Internasional atau IMF pada sesi perdagangan akhir pekan.</p><p>Proyeksi pertumbuhan ekonomi yang dikeluarkan oleh IMF pada Rabu (24/6/2020) menekan seluruh bursa saham global. Tidak terkecuali indeks harga saham gabungan (IHSG) yang harus puas parkir di zona merah dengan koreksi 1,37 persen ke level 4.896,730 akhir sesi Kamis (25/6/2020).</p><p>Aksi jual investor asing masih berlanjut sepanjang sesi perdagangan dengan total net sell Rp225,72 miliar. PT Telkom Indonesia (Persero) Tbk. kembali menjadi bulan-bulanan aksi jual dan memimpin daftar top net foreign sell.</p><p></p><p>Seperti diketahui, IMF memproyeksikan resesi yang jauh lebih dalam pada 2020. Tidak hanya itu, pemulihan diperkirakan lebih lambat dari proyeksi yang dikeluarkan pada April 2020.</p><p>IMF memprediksi produk domestik bruto (PDB) global akan menyusut 4,9 persen tahun ini atau lebih dalam dari proyeksi 3 persen yang dikeluarkan April 2020. Pada 2021, pertumbuhan hanya diperkirakan 5,4 persen atau turun dari prediksi sebelumnya 5,8 persen.</p><p>Di sisi lain, rencana penempatan dana pemerintah senilai Rp30 triliun kepada bank himpunan milik negara (Himbara) seolah tidak mendapat respons pasar.</p><p>PT Bank Rakyat Indonesia (Persero) Tbk. (BBRI), PT Bank Mandiri (Persero) Tbk. (BMRI), PT Bank Negara Indonesia (Persero) Tbk. (BBNI), dan PT Bank Tabungan Negara (Persero) Tbk. (BBTN) kompak parkir di zona merah Kamis (25/6/2020).</p><p>Koreksi paling dalam dialami oleh BBNI yang turun 4,01 persen ke level Rp4.550. BBTN menempel dengan koreksi 2,88 persen ke level Rp1.180.</p><p>Head of Research Reliance Sekuritas Indonesia Lanjar Nafi mengatakan sentimen negatif dari IMF menutup katalis positif rencana penempatan dana pemerintah di Himbara. Sektor saham konsumer dan sektor saham industri menjadi penekan utama laju IHSG.</p><p></p><p>Lanjar menjelaskan bahwa secara teknikal pergerakan IHSG melemah namun masih berada dalam tren positif jangka menengah. Menurutnya, indeks mencoba bertahan di moving average 5 dan 20 hari.</p><p>Indikator Stokastik dan RSI terkonsolidasi di area tengah oscillator. Dengan demikian, IHSG diperkirakan masih akan bergerak moderat.</p><p>â€œIHSG cenderung mencoba ditutup di zona hijau dengan support resistance 4.830â€”4.965,â€ ujarnya melalui riset yang dikutip, Jumat (26/6/2020).</p><p>Sementara itu, pada awal sesi Kamis (25/6/2020), pasar saham AS dibuka berfluktuatif. Sempat dibuka terkoreksi, indeks acuan S&amp;P 500 mencoba rebound.</p><p>Kondisi serupa terjadi untuk indeks Nasdaq Composite dan indeks Dow Jones Industrial Average (DJIA). Keduanya coba menguat setelah mengawali perdagangan di zona merah.</p><p>Hingga penutupan, Dow Jones berhasil menguat 1,18 persen, S&amp;P 500 naik 1,1 persen, dan Nasdaq meningkat 1,09 persen.</p><p>Sentimen negatif proyeksi IMF berkolaborasi dengan kecemasan akan gelombang kedua Covid-19. Akan tetapi, muncul katalis positif dari rencana regulator yang melonggarkan sejumlah kebijakan investasi yang mendongkrak laju saham perbankan di bursa AS.</p><p>Dari dalam negeri, jumlah kasus pasien terkonfirmasi positif Covid-19 bertambah 1.178 orang pada Kamis (25/6/2020). Total positif Covid-19 di Indonesia mencapai 50.187 orang.</p><p>Reliance Sekuritas Indonesia merekomendasikan saham-saham yang dapat dicermati yakni BRPT, BBNI, BMRI, PTBA, ANTM, SMRA, BSDE, ISAT, dan EXCL.</p><p>Tim analis MNC Sekuritas dalam laporannya menuliskan support terdekat IHSG berada di area 4.879. Waspadai apabila IHSG menembus support tersebut karena pergerakan IHSG selanjutnya akan cenderung koreksi dengan target koreksi berada di area 4.700 terlebih dahulu.</p><p>Namun, apabila IHSG naik menembus resistance 5.020, maka IHSG akan menguji area 5.040 dan 5.140 untuk menguat membentuk wave [v] pada pola diagonal.</p><p>Rekomendasi saham hari ini ialah <em>buy on weakness</em>&nbsp;saham JPFA, BSDE, BBNI, dan <em>sell on strength</em>&nbsp;JSMR.</p><p>Direktur PT Indosurya Bersinar Sekuritas William Surya Wijaya menyampaikan momentum koreksi wajar masih dapat dimanfaatkan oleh investor untuk melakukan akumulasi pembelian dengan target jangka pendek. Hari ini IHSG berpotensi bergerak melemah dalam rentang 4.789 - 4.971.</p><p>Saham pilihannya adalah ICBP, SMCB, MYOR, SMGR, SRIL, UNVR, BBCA.</p><p>Analis Samuel Sekuritas Indonesia William Mamudi menyampaikan IHSG (4.897) masih membentuk doji-doji berkepanjangan. Ini memberi indikasi <em>sideways market</em>&nbsp;4.700-5.100 masih akan berlanjut menjelang penutupan 1H20.</p><p>Untuk hari ini pihaknya menyukai saham INCO, SCMA, JSMR dengan rating <em>trading buy</em>, dan EXCL dengan rating <em>trading sell.</em></p><br><p></p><br><p></p><div></div>','bio-ihsg-2.jpg',11,'2020-06-26 14:46:44',2),(3,'Karoseri Bus Juga Punya Uji Terguling, buat Keselamatan','Ketika naik bus buatan karoseri Laksana dari Ungaran, terutama model SR2 HD Prime, terdapat tulisan ECE.R66 yang ada pada bagian bodi bus. Bagi yang awam, mungkin itu hanya tulisan biasa, namun sebenarnya memiliki arti yang penting.&nbsp;<div><br></div><div>ECE.R66 merupakan singkatan dari Economic Commission Europe Regulation No. 66 yang merupakan standar untuk uji guling. Standar ini diberlakukan pada negara-negara eropa yang tergabung pada Masyarakat Ekonomi Eropa (MEE).&nbsp;</div><div><br></div><div>Karoseri Laksana menjadi yang pertama di Indonesia yang menerapkan uji guling dengan standar ECE.R66 ini.&nbsp;</div><div><br></div><div>Tujuan dari pengujian sesuai standar ini untuk mendesain bus yang lebih aman, mengurangi kemungkinan bus terguling, dan meminimalisasi cedera penumpang saat bus terguling.&nbsp;</div><div><br></div><div>Export Manager Karoseri Laksana, Werry Yulianto mengatakan, proses pengujian bodi yang lolos uji dengan standar ECE.R66 yaitu dilakukan melalui simulator kumputer terlebih dahulu.&nbsp;</div><div><br></div><div>â€œKemudian jika sudah pakai simulator, diuji rangkanya. Rangka bus yang diuji bisa sepertiga bagian atau bus utuh yang digulingkan dengan alat dengan kemiringan sampai 40 derajat,â€ ucap Werry kepada Kompas.com, Jumat (26/6/2020).&nbsp;</div><div><br></div><div>Werry menambahkan, uji ini dilakukan untuk memastikan bahwa saat bus terguling, safety area penumpang masih utuh. Kemudian memastikan juga bahwa rangka yang dipakai kekuatannya sesuai atau tidak dengan perhitungan lewat komputer.&nbsp;</div><div><br></div><div>â€œUntuk saat ini baru tipe Legacy SR2 HD Prime saja yang sudah lolos uji. Untuk tipe bodi lainnya sedang dipersiapkan, nantinya semua tipe akan dilakukan uji guling,â€ kata Werry.</div>','5ef56df623d3e.jpg',5,'2020-06-26 14:50:16',3),(4,'IMF: Covid-19 Sebabkan Perekonomian Global Rugi Rp 168.000 Triliun','<p>Dana Moneter Internasional ( IMF) memproyeksi kerugian perekonomian global akibat pandemi virus corona bisa mencapai 12 triliun dollar AS atau sekitar Rp 168.000 triliun (kurs Rp 14.000).&nbsp;</p><p>Direktur Pelaksana IMF Kristalina Georgieva menjelaskan, pandemi covid telah membawa perekonomian global jatuh ke dalam jurang krisis. Sebab, 95 persen negara-negara di dunia diproyeksi bakal mengalami kontraksi atau atau pertumbuhan ekonomi di zona negatif.&nbsp;</p><p>\"Pasar dan perekonomian berkembang diproyeksi bakal menghadapi pertumbuhan pendapatan per kapita negatif pada 2020. Pasar dan negara berkembang, kecuali China, diproyeksi bakal mengalami pukulan lebih besar dalam pertumbuhan Produk Domestik Bruto (PDB) ketimbang negara maju pada tahun 2020 hingga 2021,\" tulis Georgieva dalam keterangannya, Kamis (25/6/2020).</p><p>Georgieva menjelaskan, hal tersebut berisiko terhadap upaya negara-negara di dunia dalam mengurangi angka kemiskinan.&nbsp;</p><p>Padahal dalam beberapa tahun terakhir, dunia tengah menikmati jumlah kemiskinan yang terus menurun, serta berkurangnya kesenjangan antara negara berkembang dan negara maju.&nbsp;</p><p>\"Terdapat beberapa tanda pemulihan, namun hanya akan terjadi di beberapa tempat dan tidak seimbang di seluruh sektor, negara maupun wilayah,\" jelas Georgieva.</p><p>Menurut dia, meski saat ini 75 persen negara yang sempat menutup akses masuk, perekonomian dunia belum menemukan titik terang.&nbsp;</p><p>\"Kita terus belajar bagaimana untuk melakukan pemulihan, dan secara bersamaan terus mencari solusi, yaitu kemunculan vaksin yang sangat diharapkan,\" ujar dia.&nbsp;</p><p>IMF pun memproyeksi pertumbuhan ekonomi dunia akan mengalami kontraksi atau tumbuh negatif 4,9 persen tahun 2020 ini. Angka tersebut lebih rendah 1,9 poin persentase jika dibandingkan dengan proyeksi pada bulan April lalu yang memperkirakan pertumbuhan Produk Domestik Bruto (PDB) global mengalami kontraksi 3 persen.&nbsp;</p><p>Lebih lanjut dijelaskan, pertumbuhan ekonomi untuk kelompok negara maju diproyeksi bakal kontraksi 8 persen pada tahun 2020. Angka tersebut lebih rendah 1,9 poin persentase jika dibandingkan dengan prediksi April 2020 lalu. IMF menilai, terdapat hantaman yang lebih hebat dari ekspektasi terhadap perekonomian kelompok negara maju di semester I tahun ini.&nbsp;</p><p>Proses pemulihan pun akan terjadi secara bertahap lantaran kekhawatiran mengenai peningkatan kasus penularan virus masih berlanjut.&nbsp;</p><p>Secara berturut-turut, IMF memproyeksi pertumbuhan ekonomi kelompok negara maju sebagai berikut; Amerika Serikat -8 persen, Jepang -5,8 persen, Inggris -10,2 persen, Jerman -7,8 persen, Prancis, -12,5 persen, sementara Italia dan Spanyol tumbuh -12,8 persen.&nbsp;</p><p>Untuk Indonesia, IMF memproyeksi bakal mengalami kontraksi atau tumbuh negatif 0,3 persen pada tahun ini.&nbsp;</p><p>Prediksi terhadap ekonomi Indonesia ini memburuk dibandingkan WEO pada April 2020. Saat itu, IMF masih memproyeksikan pertumbuhan positif pada tahun ini, yakni di level 0,5 persen. <br></p>','global.jpg',8,'2020-06-26 15:21:27',4),(5,'Liverpool Juara Liga Inggris, Michael Owen Sanjung The Reds','<p></p><p>&nbsp;<a target=\"_blank\" rel=\"nofollow\" href=\"https://www.liputan6.com/tag/liverpool\">Liverpool </a>akhirnya berhasil menuntaskan penantian selama 30 tahun untuk menjadi juara Premier League 2019-2020. Kepastian itu didapat setelah Manchester City kalah 1-2 dari Chelsea, Jumat (26/6/2020) dini hari WIB.</p><p>Mantan pemain <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.liputan6.com/bola/read/4289161/liverpool-juara-pemain-minta-libur-2-hari\">Liverpool</a>, Michael Owen, ikut senang dengan pencapaian tersebut. Ia pun tak lupa memberikan pujiannya buat The Reds.</p><p>\"Cukup sulit dipercaya. Mereka tim yang sangat bagus, klub yang sangat bagus, sudah lama menunggu momen ini,\" kata Owen kepada Optus Sport.</p><p>\"Jurgen Klopp, benar-benar seorang manajer legenda. Ia menjadi juara Eropa bersama <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.liputan6.com/bola/read/4289161/liverpool-juara-pemain-minta-libur-2-hari\">Liverpool</a>&nbsp;dan sekarang mereka punya yang mereka inginkan sepanjang waktu, juara Premier League.</p><p>\"Itu yang diinginkan semua orang untuk waktu yang lama dan saya yakin Merseyside benar-benar melambung saat ini dan memang seharusnya begitu.\"</p><p></p><p></p><p>Ini merupakan gelar juara pertama Liverpool di era Premier League. Terakhir kali klub Merseyside itu juara liga adalah pada 1990 silam.</p><p>Liverpool sekarang mengumpulkan 86 poin dari 31 laga. Dengan tujuh laga tersisa The Reds unggul 23 poin atas rival terdekatnya di klasemen Premier League.</p><p>Owen, yang mencetak lebih dari 150 gol untuk Liverpool selama delapan musim, menilai para pemain dan Klopp layak mendapatkan pujian besar.</p><p>\"Para pemain layak mendapatkan kredit besar, ini merupakan musim yang sulit tetapi mereka telah menjadi tim terbaik. Statistik akan membuktikan bahwa itu akan masuk dalam sejarah sebagai salah satu tim terbaik Premier League yang telah kita lihat,\" kata Owen.</p><p>\"Jurgen Klopp, dia baru saja membawa tim ini ke tingkat yang lebih tinggi di mana 30, 40 tahun lalu ketika Liverpool memiliki tim-tim hebat. Saya pikir Merseyside sangat bangga dengan apa yang mereka miliki sekarang.\"</p><p>Disadur dari Bola.net (Yaumil Azis,published 26/6/2020)</p><br><p></p>','lvp.jpg',1,'2020-06-26 16:31:53',1),(6,'Skutik Terbaru Suzuki Tembus Rp 38 Jutaan, Apa Istimewanya?','<p></p><p>Memeriahkan pasar otomotif Taiwan, Suzuki resmi meluncurkan Swish 125 terbaru. Selain memiliki pilihan warna baru, motor ini juga dibenamkan beragam fitur canggih.</p><p>Seperti dilansir Bikewale dan Hindustantimes, Jumat (26/6/2020), motor terbaru ini mendapatkan kabel <em>dual-throttle</em>&nbsp;yang mampu meningkatkan penforma kendaraan dan kenyamanan saat berkendara, dan sistem Suzuki Easy Start yang mampu menyalakan mesin dengan lebih mudah.</p><p>Selain mendapat <em>instrument cluster full digital</em>&nbsp;dengan cahaya oranye, sejumlah besar informasi bias didapatkan pengendara dari panel ini, seperti kecepatan, efisiensi bahan bakar, pengukur bahan bakar, jam dan pengingat penggantian oli mesin.</p><p>Dari sisi pencahayaan, motor ini telah disematkan sistem LED di semua lampu. Guna menunjang aktivitas harian, Suzuki juga menyediakan soket USB di bagian depan untuk mengisi daya ponsel.</p><p>Mendapatkan outlet heksagonal 3D, knalpot motor diklaim lebih sporty dari versi sebelumnya. Untuk menunjang tampilan, motor pabrikan Jepang ini mendapatkan pilihan warna biru serta perak dan merah serta Hitam.</p><h2>Mesin</h2><div><p>Khusus jantung pacu, Suzuki Swish mengandalkan mesin berpendingin udara silinder tunggal berkapasitas 124cc yang mampu menghasilkan tenaga hingga 9,3 Tk pada 7000 rpm dan torsi puncak 10 Nm pada 6.000 rpm.</p><p>Menggunakan teknologi SEP (Suzuki Eco Performance), motor ini diklaim lebih hemat bahan bakar. Sudah bisa dipesan konsumen, Suzuki Swish 125 dibanderol NTD 79.800 atau setara Rp 38,3 juta.</p></div><h2>Kocak, Dealer Suzuki Ini Bikin Netizen Geleng-Geleng Kepala</h2><div><p>Sebuah foto dealer Suzuki yang diunggah oleh akun @hujatbaper di Instagram rupanya menghebohkan warganet. Jika dilihat pada bagian atas, foto tersebut tidak menyimpan keganjilan.</p><p>Tulisan besar Suzuki dengan logo S berwarna merah layaknya dealer Suzuki pun mudah terlihat. Tapi saat pandangan dialihkan di bagian bawahnya, jangan kecewa ya Otolovers.</p><p>Bukan lagi menjadi dealer, dalam foto itu tampak seperti tempat makan. Entah foto itu hasil edit atau bukan, tapi foto itu membuat netizen ramai-ramai berkomentar.</p><p>\"Wah ini kalau servis enak dong, biasanya brand H dan brand Y cuma ngasih minuman dan makanan ringan ,lah ini.. Bisa sekalian syukuran gan ????,\" komentar @profbaper.</p><p>\"Yang dagang mungkin para mekanik nya min ????,\" komentar @wahyuari24.</p><p>\"Suzuki hayabusa menangis melihat ini,\" komentar @aryapangestu23.</p></div><br><p></p>','suzuki.jpeg',0,'2020-06-26 16:38:41',3),(7,'Jokowi Sampaikan Hambatan ASEAN Tangani Pandemi COVID-19 Kian Berat','<p></p><p>Negara-negara di dunia kian menghadapi tantangan yang semakin berat dalam menangani dampak pandemi Virus Corona COVID-19. Hal itu disampaikan Presiden Jokowi dalam KTT <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.liputan6.com/global/read/4287755/hampir-10-tahun-menanti-timor-leste-segera-gabung-dengan-asean\">ASEAN</a>&nbsp;ke-36 yang digelar secara virtual, di bawah kepemimpinan Vietnam. </p><p>\"Dunia termasuk negara-negara di kawasan <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.liputan6.com/news/read/4283180/airlangga-ruu-cipta-kerja-bakal-menjadikan-indonesia-paling-maju-di-asean\">ASEAN</a>&nbsp;saat ini menghadapi dua tantangan besar yaitu penanganan COVID-19 dan dampaknya,\" ujar Jokowi, dikutip dari Menlu RI Retno Marsudi. &nbsp;</p><p>Jokowi menyampaikan, tantangan tersebut semakin berat karena situasi global yang sangat dinamis saat ini. Hal tersebut ditandai persaingan atau rivalitas antara kekuatan besar yang semakin meningkat. </p><p>Di samping itu, meningkatnya rasa pesimisme terhadap kerjasama multilateral juga menjadi faktor lainnya. Ditambah lagi, <em>rule base order</em>&nbsp;semakin banyak dilanggar pada saat seperti sekarang ini.</p><p>Dengan perubahan kondisi geopolitik seperti saat ini, Presiden RI menekankan pentingnya peran ASEAN di dalam menavigasi perubahan tersebut.</p><p>Ia juga kemudian menyampaikan bahwa dari lebih lima dekade, ASEAN memiliki fondasi yang cukup kuat sebagai komunitas di dalam menghadapi berbagai perubahan yang terjadi.</p><p>Menyikapi hal tersebut, Jokowi menekankan dua hal yang menjadi fokus utama.</p><p>Pertama, pentingnya ASEAN untuk memperkuat kerja sama percepatan pemulihan ekonomi ASEAN. Presiden mengingatkan bahwa dalam situasi ekonomi yang cukup terpuruk akibat pandemi, seluruh negara ASEAN harus bekerja lebih keras untuk menguatkan dan menumbuhkan ekonomi kawasan secara lebih cepat. </p><p>Ia menekankan bahwa konektivitas menjadi kuncinya, baik konektivitas barang, jasa maupun pelaku ekonomi yang secepat mungkin segera dapat dihidupkan. </p><p>ASEAN juga dinilai perlu memulai pengaturan mengenai ASEAN Travel Corridor secara hati-hati, terukur dan bertahap. Ini dinilai penting lantaran dapat menunjukkan arti strategis dari komunitas ASEAN baik di kawasan maupun di mata dunia internasional. </p><p>Jokowi menekankan pentingnya konektivitas digital terutama fasilitasi e-commerce, e-health dan e-learning termasuk UMKM untuk bisa masuk dalam dunia digital. </p><p>Hal ini pun kemudian berkaitan dengan RCEP, yang erat dengan resiliensi ekonomi kawasan. </p><p>Kedua, Jokowi mengatakan pentingnya penguatan kerjasama kawasan untuk mengembalikan harapan terhadap multilateralisme yang efektif, efisien dan berkeadilan. Ini akan menjadi dasar bagi negara-negara di masa new normal.</p><p>Jokowi menegaskan bahwa ASEAN harus menjadi subjek dan bukan hanya menjadi objek, yang membuat pentingnya untuk memperkokoh ASEAN Outlook on Indo-Pacific yang menguatkan konektivitas. </p><br><p></p>','jokowi.jpg',1,'2020-06-26 16:40:37',4);
/*!40000 ALTER TABLE `berita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,'bola'),(2,'bisnis'),(3,'otomotif'),(4,'global');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-26 17:30:47