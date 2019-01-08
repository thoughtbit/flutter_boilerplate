class Post {
  final String title;
  final String auther;
  final String imageUrl;
  final String description;

  Post({
    this.title,
    this.auther,
    this.imageUrl,
    this.description
  });

  final List<Post> posts = [
    Post(
      title: '',
      auther: '',
      imageUrl: '',
      description: ''
    ),
    Post(
      title: '',
      auther: '',
      imageUrl: '',
      description: ''    
    )
  ];
}