#FINAL PROJEK SISTEM OPERASI
#TAUFIK NUR FIRMANSYAH
#18081010036

utama(){
	loop=1;
jumlah=0;
tiket=0;
total=0;
Jenis_Jen1=0;
Jenis_Jen2=0;
jenis_Jen3=0;



declare -a jum 
declare -a jen1
declare -a jen2
declare -a jen3

function input_Data(){
	echo "=======DATA========";
	echo "Masukkan nama :";
	read nama;
	echo "Masukkan alamat :";
	read alamat;
	echo "Masukkan nomor tlp :";
	read nomor;
	echo "Masukkan tujuan :";
	read tujuan;
	echo "===================";
}

function input_harga(){
	clear;
	echo "=======HARGA========"
	echo "1.EKONOMI 10000 ";
	echo "2.BISNIS 15000 ";
	echo "3.EKSEKUTIF 30000 ";
	echo "=====================";
	read -p "Pilihan kelas anda : " pil;

	if [[ $pil -eq 1 ]]; then tiket="10000";
		echo "banyak tiket :"
		read Jum;
	let total=Jum*10000;
	echo "$total";
	elif [[ $pil -eq 2 ]]; then tiket="15000";
		echo "banyak tiket :"
		read Jum;
	let total=Jum*15000;
	echo "$total";
	elif [[ $pil -eq 3 ]]; then tiket="30000";
		echo "banyak tiket :"
		read Jum;
	let total=Jum*30000;
	echo "$total";
else
	echo "======================";
	echo "MAAF TIDAK TERSEDIA!!!";
	echo "======================";	

fi
}
function lihat_Harga(){
		echo "======CEK DATA======"
		echo "nama : $nama ";
		echo "alamat : $alamat";
		echo "nomor tlp : $nomor";
		echo "tujuan : $tujuan";
		echo "banyak tiket : $Jum";
		echo "total harga : $total";
		echo "=====================";
}
function Cetak(){

	echo "=======CETAK TIKET=======";
	echo "nama : $nama ";
	echo "alamat : $alamat";
	echo "nomor tlp : $nomor";
	echo "tujuan : $tujuan";
	echo "banyak tiket : $Jum";
	echo "total harga : $total";
	echo "=========================";
}

	

while [[ loop -eq 1 ]]; do
	echo "||========================================||";
	echo "||          SELAMAT DATANG                ||";
	echo "||    DIPELAYANAN PEMBELIAN TIKET KA      ||";
	echo "||========================================||";
	echo "||1. Input data pembelian                 ||";
	echo "||2. input harga tiket                    ||";
	echo "||3. view data diri dan harga             ||";
	echo "||4. Cetak Tiket                          ||";
	echo "||5. Keluar Program                       ||";
	echo "||========================================||";
	echo "Pilihan : "
	read pilih;
	

	case "$pilih" in
		"1" )
		input_Data;
			;;
		"2" )
		input_harga;
			;;
		"3" )
		lihat_Harga;
			;;
		"4" )
		Cetak;
			;;
		"5" )
		let loop=2;
			;;
	esac

done
}

kedua(){
	
	deadlock(){
	echo "apakah anda yakin memilih deadlock"
	echo "kalo deadlock ingin berhenti tekan ctrl+c untuk memberhentikannya"
	echo "apakah anda yakin? (y/n)"
	read yakinanda
	if [[ $yakinanda == y ]]; then
	while :; do

dd if=out.fifo bs=1b count=1 2>/dev/null | grep $1

if [ $?  -eq 0 ]; then

echo “$2” > in.fifo exit 0

fi

done
fi
if [[ $yakinanda ]]; then
	echo "anda tidak berani :D"
fi	
}


membuatuser(){
	echo "masukkan nama user baru:"
	read userbaru
	sudo adduser $userbaru
}

membuatbash(){
	echo "buat nama :"
	read nama_file
	nano nama_file $nama_file
}

menjalankanbash(){
	echo "file yang dijalankan : "
	read nama_file
	bash nama_file $nama_file
	echo "berhasil"
	echo "	"
}


browsing(){

	firefox
}


installaplikasi(){
	echo "aplikasi apa yang ingin anda install?"
	read installaplikasi
	sudo apt install $installaplikasi
}


while [[ pilih=1 ]]; do
	echo "========================================="
	echo "	    MENU PROGRAM    		   "
	echo "=========================================" 
	echo "1. Apakah anda berani untuk mendeadlock? "
	echo "2. membuat user baru					   "
	echo "3. Membuat file bash		 			   "
	echo "4. Menjalankan file bash 	 		  	   "
	echo "5. Apakah anda ingin browsing hehe? 	   "
	echo "6. Menginstall aplikasi?				   "
	echo "7. Keluar							   	   "
	echo "========================================="
	echo -n "Masukkan pilihan anda "
	read pilih



	case "$pilih" in 
		"1" ) deadlock; 
					;; 
		"2" ) membuatuser;
					 ;;
 	    "3" ) membuatbash;
			;; 
		"4" ) menjalankanbash; 
			;; 
		"5") browsing; 
			;; 
		"6" ) installaplikasi; 
			;;
 		"7")break;
 			 ;;	
 			  esac

done
}

while [[ pilith=1 ]]; do
	echo "menu"
	echo "1. tiket kereta"
	echo "2. sisop"
	echo "3. exit"
	read pilih
	case $pilih in
		1 )
		utama
			;;
		2 )
		kedua
		;;
		3 )
		exit
		;;
	esac
done