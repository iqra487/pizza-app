// ignore_for_file: public_member_api_docs, sort_constructors_first
class MyUserEntity {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  Map<String, Object> toDoc(){
    return {'userId': userId,
    'email':email,
    'name':name,
    'hasActiveCart':hasActiveCart};
    
  }

   static MyUserEntity fromDoc(Map<String, dynamic> doc){
    return MyUserEntity(userId: doc['userId'], email: doc['email'], name: doc['name'], hasActiveCart: doc['hasActiveCart']);
  }

  @override
  String toString() {
    return 'MyUserEntity(userId: $userId, email: $email, name: $name, hasActiveCart: $hasActiveCart)';
  }
  }
