import 'dart:io';

void main(){

var jalan=true;
var ceklogin=true;
var saldo = 2000000;
var pin = 112233;

void login(){
  print('============================');
  print('BANK SERBA ADA');
  print('============================');
  stdout.write('Masukkan PIN Anda : ');
  var inputpin = int.parse(stdin.readLineSync()!);
  if(inputpin==pin){
    ceklogin=false;
  }else{
    print('PIN Yang Anda Masukkan Salah !!');
  }
}

void tampilmenu(){
  print('========================');
  print('MENU');
  print('1. Cek Saldo');
  print('2. Setor Tunai');
  print('3. Tarik Tunai');
  print('4. Keluar');
  print('========================');
}

void ceksaldo(){
  print(saldo);
}

void setortunai(){
  print('============================');
  print('BANK SERBA ADA');
  print('============================');
  stdout.write('Mau Setor Berapa : ');
  var setor = int.parse(stdin.readLineSync()!);
  saldo = saldo + setor;
}

void tariktunai(){
  var tarik2=0,hasiltarik=0,hasiltarik2=0;
  print('============================');
  print('BANK SERBA ADA');
  print('============================');
  stdout.write('Mau Tarik Berapa : ');
  var tarik = int.parse(stdin.readLineSync()!);
  saldo = saldo - tarik;

  print('=============');
  print('Pecahan : ');
  print('1. 50.000');
  print('2. 100.000');
  stdout.write('Mau Pecahan Berapa : ');
  var pecahan = int.parse(stdin.readLineSync()!);
  switch (pecahan) {
    case 1 :
    if(tarik % 50000 == 0){
      hasiltarik = tarik ~/ 50000;
      print('50 rb $hasiltarik lembar');
    }
    break;
    
    case 2 :
    if(tarik % 100000 == 0){
      hasiltarik = tarik ~/ 100000;
      print('100 rb $hasiltarik lembar');
    }else{
      hasiltarik = tarik ~/ 100000;
      tarik2 = tarik - hasiltarik * 100000;
      hasiltarik2 = tarik2 ~/ 50000;
      print('100 rb $hasiltarik lembar');
      print('50 rb $hasiltarik2 lembar');
    }
    break;
    
  }
  print('sisa saldo anda = $saldo');
}


while(jalan==true){
  if(ceklogin==true){
    login();
  }else{
    tampilmenu();
    stdout.write('Pilih Menu Yang Mana : ');
    var inputmenu = int.parse(stdin.readLineSync()!);
    switch(inputmenu){
      case 1: 
        ceksaldo();
        break;

      case 2:
        setortunai();
        break;

      case 3:
        tariktunai();
        break;

      case 4:
        exit(0);

    }
  }
  
}

}