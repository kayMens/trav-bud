class Contact {
  String name;
  String phone;

  Contact(this.name, this.phone);

  static List<Contact> getContact() {
    return <Contact> [
      Contact('Kwasi Nimo', '02014578456'),
      Contact('Kwasi Nimo', '02014578456'),
      Contact('Kwasi Nimo', '02014578456'),
      Contact('Kwasi Nimo', '02014578456'),
    ];
  }

}