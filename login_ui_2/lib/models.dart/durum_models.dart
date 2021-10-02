class DurumModel{
  late String statusUrl;
  late String statusName;
  late String statusDate;

 DurumModel({required this.statusUrl, required this.statusName, required this.statusDate});
}

List<DurumModel> durumVerisi=[
  DurumModel(
    statusUrl:"https://cdn.pixabay.com/photo/2021/03/14/02/14/girl-6093161_960_720.png", 
    statusName:"Esma Eserler", 
    statusDate:"Bugün 10:21"),
   DurumModel(
    statusUrl:"https://cdn.pixabay.com/photo/2021/03/14/02/14/girl-6093161_960_720.png", 
    statusName:"Sema Eserler", 
    statusDate:"Bugün 10:21"),
   DurumModel(
    statusUrl:"https://cdn.pixabay.com/photo/2021/03/14/02/14/girl-6093161_960_720.png", 
    statusName:"Eda Eserler", 
    statusDate:"Bugün 10:21"),
    

];