import 'package:class_3_app_demo/api_services.dart';
import 'package:class_3_app_demo/repo_model.dart';
import 'package:flutter/material.dart';

class GithubHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Treanding Repositiory'),
        elevation: 0.0,
        backgroundColor: Colors.blueGrey[800],
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getRepositories(),
        builder: (context,snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context,index)=>RepoCard(repoList: snapshot.data[index],),
            );
          }else{
            return Center(
                child: CircularProgressIndicator()
            );
          }

        },
      ),
    );
  }
}
class RepoCard extends StatelessWidget{
  final RepoList repoList;

  RepoCard({
    @required this.repoList
  });

  getAvatar(){
    return CircleAvatar(
      backgroundColor: Colors.grey,
      backgroundImage: NetworkImage(repoList.avatar),
    );
  }

  getRepoInfo(){
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RichText(
            softWrap: true,
            text: TextSpan(
              style: TextStyle(
                color: Colors.blueGrey[800],
                fontSize: 20.0,
              ),
              children: <TextSpan>[
                TextSpan(text: '${repoList.username}/',style: TextStyle(
                  fontWeight: FontWeight.bold,
                )
                ),
                TextSpan(text: repoList.repo.name,style: TextStyle(

                )
                ),
              ],
            ),
          ),
          Text(repoList.repo.description,
            style: TextStyle(
                fontSize: 15.0
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            getAvatar(),
            SizedBox(width: 10.0,),
            getRepoInfo()
          ],
        ),
      ),
    );
  }
}