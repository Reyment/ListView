
    import 'package:flutter/material.dart';
    
    void main() {
      runApp(MaterialApp(
        //menghilangkan label debug di kanan atas
        debugShowCheckedModeBanner: false,
        title: "Latihan List View",
        home: MyApp(),
      ));
    }
    
    class MyApp extends StatefulWidget {
      const MyApp({Key? key}) : super(key: key);
    
      @override
      _MyAppState createState() => _MyAppState();
    }
    
    class _MyAppState extends State<MyApp> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            
            backgroundColor: Colors.black,
            
            // membuat title app bar berada di tengah atas
            title: Center(child: Text("Products")),

          ),
          //bungkus semua widget di dengan listview terlebih dahulu
          //widget di dalam listview seperti padding, singlechildscrollview, dan listview
          body: ListView(
            children: [
              //singlechildscrollview berfungsi untuk membuat widget dapat discroll
              //fungsinya hampir sama dengan listview
              SingleChildScrollView(
                //untuk merubah arah scroll menjadi ke kanan
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                  ],
                ),
              ),

    
              //membuat listview di dalam listview
              //perhatikan beberapa properti di dalamnya untuk menghidnari error
              ListView(
                //Jika tidak menyetel properti shrinkWrap, ListView akan sebesar induknya.
                //Jika menyetelnya ke true, maka besarnya akan menyesuaikan dengan ukuran content di dalamnya
                shrinkWrap: true,
    
                //membuat widget tidak dapat discroll sendiri
                //scrolling mengikuti parent
                physics: NeverScrollableScrollPhysics(),
    
                children: [
                  ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            image: DecorationImage(
                                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8T2hGrVUXLasbDyA7QH_jiJKs8E_Xmdq14A&usqp=CAU"),
                                fit: BoxFit.cover)),
                      ),
                      title: Text("Brand New Shoes"),
                      subtitle: Text("Stock: 8"),
                      trailing: Icon(Icons.delete_outline)
                  ), 
                  ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            image: DecorationImage(
                                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSkuO_7vHwiUv2wCBKm-Xx1JMhfnuAlFJk4g&usqp=CAU"),
                                fit: BoxFit.cover)),
                      ),
                      title: Text("Brand New Shoes"),
                      subtitle: Text("Stock: 9"),
                      trailing: Icon(Icons.delete_outline)
                  ), 
                  ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                                image: NetworkImage("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoGCBUTExcTFRUXExcZGxsdGRkaGh8XGhkcGhoZGxwbGBcaHyslGiAoHRwaJTUkKiwxMjIyHCE3PjcxOysxMi4BCwsLDw4PHRERHTMkIygxMzkxOjQ0MTQ3MzEzMTExMy47OzMuLjMxMjExMTExLi4zLjExMTExMTE2MTExMTExMf/AABEIAJ8BPgMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABAUBAwYCBwj/xAA+EAACAQIEAwYDBgYBAwUBAAABAhEAAwQSITEFQVEGEyIyYXFCgZEUI1KhsfAHYnLB0eGiFTNDgoOSwvEk/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAIDBAUBBv/EAC8RAAMAAgEDAgUDBAIDAAAAAAABAgMRIQQSMSJBE1FhcZEygbEUodHwwfEjM0L/2gAMAwEAAhEDEQA/APs1KUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpWq7cCgsxCgakkwAOpJ2oDbStGFxSXBmR0cdVYMPqK30ApSlAKUpQClKUApSlAKUpQClKUApSlAKUpQClKUApSlAKUpQClKUApSlAYrNaMXiEtI1x2CIilmY6BVAkk/KqPhfaF8Whu4XDlrUkK91+5FyDBNtQrsRMiWC0SYOirNUeD4796tm/ZfDO2iZirW3MTCXFMZonwmDptV3TWgZpSlAKUpQCqji/HbGHYLcdi5EhER7rxJGbJbUkCQdTpoelW9VPCWHfYoHzd6nvlNm1lI9JD/MNXqBpwnabDXNM1y3sPvbNywCTsA11FUn0muW/imcU7patibfdl4/G4YKQOpAKEDfX3rquP9osLhRF+4oYjyDxOQf5BJA9TA9a+b8b7Qfa5w2HtuEDi5algrWylt86qqzC7lRm0MgaQBo6eG7T1x9SFv0sg9iuLOjreN02WkAo4ZluITrJHLczGm+5g/ZeG4xL9sXUYMrDkZg8wY5ivgVnFZcQ4vWhcV9Znu3DxBIYdWkkEb9OfY9geIPYuFll7DNluDmm2V3XkwBkxMrm3gRp6jB3J17r+5Rjydr17M+sUrArNc01ClKUApSlAKUpQClKUApSlAKUpQClKUApSlAKUpQClKUApSlAKUpQHMfxPtO/DMQE3yqT/StxGf8A4Bqtuz1tEw1hUgILaBY2jII/KptxQQQQCDoQdQQeRFUKYLFYZRbw3dXrQ8iXWdHtr+Fbiq2dRsAVBA0k16uVoHrtrjsPZwzfaDo2iAecuNVKdGUgHNyiZrj7X8THCqDYVmCqC2c6mBJyhdJPKaqv4n/aLl4XLqIotoqMEc3EUsc0ksqkBsyCcsSAJkgVytmP3rXR6bpoqN1yUZMjXCPpvC/4hhnUXbQRCdXUnwz8RU7r1gyOhr6ADX54Dxrv+n+6+0fw+xvfYG0SZZAbZnf7slQT7qFPzqvrennHqpWj3FbfDOhpSsVhLhXzj+J3GzavomHLJfCRcuIY8DarbYczuwO6zp5jXYce7Q4fCCbtwBuSL4nPsvL3MCvluLtfbMQ+JuBrVu4wZVmbjiAgCaaL4dWI5wJ5aulxbrdLj+SrLkUop+H4B8QxJMCZuXG1AJjViNWbbQak67AEbuKXVs3bduzKDVi+zOyhguYjSNICjQTzJJNxiroRQiqLeWYQbLoJkHcyNZJJnXmDznaTxFGnMw/tr/auzODc91HJrrO7J2T4+ZbvbTEW7rd0xuhQ5yEBnfaV5CQJIjfNvpL7E1sC/Yu5iBF1QctxQZHiVTqQC0kaZcx2isqoQC9hnMgA3LTeZZaIH4hquvKdddKh4jEBrpdAVkZiOY31EcpB1HSnb3Ph6XyZ4qqK5W0/c+n9hu0YxKC3cIF1fkHXkVHUDQj0n26uvifDMfalVdTZuIQVu2/xAbsgGuyeXq0zMV13Zjtnd702cYqBSQLd9CMpJ+F1kx6MND7a1yep6VzTcrg6mDKqlJvk7+lYrNYjQKUpQClKUApSlAKUpQClKUApSlAKUpQClKUApSlAKUpQClKUApSlAfOu2GmNYkZrbqqXB1V1Cmfkd+W9fNMRh2tO9ttWRmQ+pRipP1Brte2/FVuXne2ZTNkn1t6GPSRp/uqDtQn3q3R5bqKZ/nRVRvqMj/8AuV2sScxL+a/g56reSpfz4Ky2/wC/9113YLtUmDz27gbu3OaV8RRoCk5ehAG22X1rjzbr2iD9/wCasyKck9tE59L2j63if4h4NRK95cPRUj83IrmOL9vMTiD3WGt91m2g5rh+ZACDmTyjU1yeGwTXTlQDSJJ0VQebNy/UxpNXNgJhwVtyZ89xhqxAPhCTtPwzppJOhNGPpY3wt/c8ydR2rk94bs84bvLrrcckgKyXHUtrq7FZeNyIKnfxCQZbPdRzcK96sSWQ5yAwOuWA1vSdSF02qpvY4OTJPrJzMd4zE7wDGvp0FSMLxZlAGY6GVn4TESp+HTN5cu+prbPT3PPDOXl6hZPTW0voGvpcII58tuW/79PlC4ivd2WuwGKlRBMgFmC66a7ggdYnSra5ibd+S6LOnjXw3JJHNV8WgJ8SsP5hUTEYCEdUfvbbiCoEXNRyUSH90JnoKlkvcOXwyPTY1Npp7X9ymJuMhuGSZENlAAZQIBCgAECI6x6E1qtcZJKPcHd3UaVvKNDA2uJEkx8QmdmUyWqXwPiT2ZSBcSSrW3GhIVlGnLQk9dpqnvlRccAELJInWAZygnmYO/p9KrnuS3+TpSpTaReYniFu+qkW1tMCMz2/ECABqE0OhztvsY5CLHE4Fkth8y3bZgF7ZkAmRrzUggxI5VzPBBbW7kuObaEQGjMoYxGcb5dwY1HsKuMIly1ee2j9+rAsGQTKEx40GzA6EGYOXWa9l6XauPnv/JC8fv8AuteSTwXtZet4lUDlmUZAjO0Pl8q+KRB5aDcbcvpvZvtZhsWAqv3d0gTbfwsCRMCdG+X0FfFeFYRbuIVLgljmBZd2IBZQD0YgAf1cq6i3wlclsrKhrndrBa54xGXMCGC5txMb7xWLNgivo0aYyqHp7ez7JSvl9jjHEMPfJdjdtgHwEanQwMp8QEx4lzE9K7Ps/wBpbOK8KnJc5o2+m+U/F+voKwZOnuOfK+hojIr8F9SsVmqSwUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAxVV2sx/cYS9dBgqhCn+ZvCv/ACIq1r57/GLiqjDrZRwzG4DcCmcqqrHxRt4iu/Sp457qSI09I+e4ZybDDkLmYfMKNvl+ftU3CH7RaOHc5SDmtsdcpE/5IjmCeYFRbJ//AJ0HVmb/AOuv0FbsJb1mvo4xp4+TjZcjnJwRWwV9DlNst0K+IH166yNwNxUzhHA719gIyLMGIZzAkhRsDl1kmBvroDZrcOU5iY+pO+g+e9PtjojKDlDaED8MnwseYmTA6mZ5UvHXhFvxmb8W1uyBatEMo3yk5SSFk5zq8gbkSSBEAAmpujN5vTaABpyGw0oWJ1J33rQzeta8WOYWvc52V3dN+x2V7EYO81oOy5UUoqsGWZAChm1gIiDnBdt9TVOvZ6TBZrQWyjuzLmBd9cqDwyAszE6o2+1Uhea32MU6KyI7KriGUHwsNd12O5+tVLpqj/11+S34/d+ufwScRwLEJk+7L5wpUJ4jLKXjKNZABnSB1qHexbLoyknZp0bTQzO5EEagxrzq7HaG6y5Lo71Crg5W7tiXdbhJYAjdcugGh0it6Y/DXFcXMwc2jbVnUOqkgu7zPne6xaYOixpmqLvNK/8AJO/sSU4aforX3Ofsst6DcLNES4E3EG5kEy6j5gQII2qD2g4SbYF5biXUJgsjSRtBK7wTmUHnk5SJ7JuztlnPdMqW1tsc6XM5ZxmZNSxGYKpLFTsV0WdOUxRJOYgHN5thJO5PLXnSGsq9D18+C/ueKvVz8iluiQD6/LT9Ks7T3rNq3jLcoVIAcQQQWYZT6ZrZ0P4ak3Ozz921wstgAfH8Wp8oHWDHWRAM1V4jG9zYeyGJ7wAFZOWc6tmI2ERp9OZqDfDfGvc0bTc/M3cVxne3vtABts4U+E+W4p1ynkdFf0zeldVw/tOAZfvLTkwzW4e252Ld0xGQ+xPoBsOUGEJw4uKZyEG4PwBiApjmGPvGT1rdhbFxkDC27LJOYKSNPUD0P0qvsiuCVn0K3xdMQssUv25jwK1u4p9EuRmPop261z2Osso760tu84gMMrBG9ch1DbGDJ5SYmq/gzdwty48qWU2whEeFvOSrb9ANpk8gTZcPxwZGzFWVFLFmJV1CiYzgEtt8Qb32qCxOU35RQ77a1L5LHsL2ivW7j9/mNshvCATlYFcuQEAAEG5KjXwAkbT9CwXFLV2Aran4WBVvo1fKb/HrQH3aPcbqzlUG+wAznpHh/wA117it1jMhPRFUD5SC31NU10fxG34NM5qlI+7Ur5LwTttesrlaLwmfHOYegadPpXRYb+Ids+ey4/pYN+uWst9Hlnwtl09RL88HcUrkW7e4bLIS6T0hR+eaK3YXtzg38zNbPRlJ/O3mH51U8GVeZZNZYfudRSqvDcew1yMt5DO0mNo6+4qfbxCN5WU+xBqty15RPaN1KUrw9FKUoBSlKAUpSgFKUoDArNYqJxLGJZtl3IUD8zyAHMnpRLb0jxvS2yN2j4muGsPcJAIEIOrEHKI99fYGvl2CxIfRgHZuTGdQQSfWnGUNw3Ljat4Xnmw1VvoQD6CoOHclpiBO2x05/v8AtXXwdP2S/mcnP1DqlxpErieAQ+TwkbKB4dT05VjCYcwBlJ/FGh9vQaHWpFhWY5jPuf0r134UEzJnT/XWtUulOjO7W9mbeCfNmCgfhB2A67Azt+lZu8NnVri69J9fprWrFY5nWRvzOg+X6VY8O4deueKYBEB7h7tdeSjd/cVF055b0S264lN/YrDgbYMZif30Nar2Atny3NfUD/VdpwvgNgCXz3TEgeRD9N/cmtvaDh9l8KzJbRbiybeQAGVGYqW+LRTJPy1g1S+sSrS2y2emtzt6X9z57/0t/hIf2/tNeDh2XRlK/Kra2hBGxESMp/voRXsu6nfTn0002itfxK2Z+6UuSpW3WWYR1q8722//AI5PUaj6a1DxVi2d2KT1X9YIqc59eSFRFFRMGV8JEwRoRIg6+2leCmkb1OvcPYeUh+cgzP76VHZCuhBFXTc14ZD4blEH7AAdpB5THzB5H8jzBqTf4Ql5FDNzAtXCIKxrkuAAyIPyOo312h5GtbrDZeUqdGXqP7Ecj/aQY5cM0uBi6nIq1TIVm09snDNNvvDbt3BoCULqdG3g6GQddN6ucbimQtAUjNkVTqiKFBAtjZd+W0Vp4xbm13o8T2FDgwZe2DnB9Mvm30GbnUjjdvxXPS5bOsnRkfaRPIVlxpO/UbM9txtfX+CxxXE0Ki3etKygCGtmQPUq4Inb4eXrUbC4XCm5Nt8kg5rbSoIKtmDKQwYQSI8PLrNViMANN9zG1antZvnzrQ+jnWpbRz462t7pJm/iPZJ0BuW3R7c7mTl9Jtm5I5SY5da8cN4CZD3GBQNGVQ4DEECGdlEDUTlDGJjUae8Biwk5hPLcjp0PoPoK0tdkRDXP6iWA9l/Kqv6a1w6NP9e3+mS0+2EaBA8TqS1sb6ZQpgR0A00kzIHhMWxMd3a5b3H9NIB9D9T6RBt44/EDPtt9a83MToDp/f61cunky11WbfyJ9o2C4a4i2SDI0z2j6GNfqpJ0gjepF3BK2q4hDM6TBEGI8brJ25cx1FUt+SAR771IwXFb1pcu6NvKg9R06E1XfStcw/yX4+tpzqlslHDKF8d9YPLwqZ05qLgG46Vqv31tyqZtNmIKnpu5kc/KV9umcSCvjzKA2sgASPUD3quxl5ZktnpPTquaeyC6y29StHZdi+18EWLssuyMAWK6aLAEsOkCR7bd/Zuq4DKQwPMV8j7DcRw9ovbuJD3CAt3dQI8hPwAkEzsecRXedl8UA72ySJghSDv8QHLTQfSuL1eJTddq1o7vT5G5XczpqUpWM1ClKUApSlAKUrFAReIY23ZQ3HbKo+ZJ6ADUn0r51287QC81s2ywVAW8QgZ5GpHQAf8AL1q77cYlXe0FdXHiBCkMQZTcA7x+hqkPD7d4KBlUtup1B0+E6+KSBm0UTrOYTu6aJnV0Yuouq3MkDhuLS/AI7p9YHKDuADuvz5DfcSBwQyCpVZGm594n56a1S4zAC1cyAw4M5D4SQG3B+IaEyDEa6bV02Bv2lQK7N3k5gXzSAATIghjoOep0gGt1tzzD4OfOq9NoiJwO/clZmP5XIHPmNPapNvsyFE3rhQbwYB94EzHPXY8q1cQ4pcJy96dMsZTC6mDJzaDbXXnMb1Ev3guYHxt5jAdwARIJltJAkSIg77VBVkfvr9i3txr28HTcLtYKx4lCsV3YlWZTP4Top/Pet2K4pYUzu0rGaDIMMRn2AEeu42FcrgruYMR3YA62kaNxrmU6eutWiYkr5Gy5tZW3bRv6gQuqjTQmTr6VReF9222/9+xbGedaSJTcZCIcjZNdBqQRrqpUAiOp1OlLXGbJKs9wwEKlcpAOYgyhXbbUHeBVTjccjQWcOdRLku6AFQYBIKt00jQ6GKiW8dbAaVBn4VQaeFYktEic2pgkgRU1gTXg8efksrv2NACFa71m6qb66IrFj+X1qbh+OYW3th0U8oCltvxNrXO4NbtyHt2mbKQNsy9YaBGWT1n1qyx3DMTb3sFiRJZPEAf/AEjwj8x1qVRD9N0/yVqrXMyvwdHh+0lsjwiN/TmYkD961LucUsuAHyHNGjAx9SK4huBYu4Z+zsT+LMg/Vun/AOc6Xrz4de6cXLbfhaGXTNqqv4SNtVn351W+nxt+iufuWLPkS9U8HW4/s7h7nitnuXjddj8uXyqjxPCLto5bih7ZPmXKRzJJVtGMehqvwXFXt65mTplDZdySYYnLJnw7GBpXS4HtQkQ4U9cvOP5Tp8po1mxL5oJ4cj2uGcxjeDrLFCBHIAiOoKHy/Ue1VeIwLKJGvpsf8fnX0DEXMJdgZwjHQeZcpOnhJHh5gwYqrx3Zy7aLXLbd4CdVOhI6yDEzzkHQetXYurfinr7lWXA1yltfQ5O3mAAKkgZlOgIytyJE6SWJ961XL5yMDM93b1g6sjKhJ199+tW2KvtbJVrcbBgRzkEacuXuCetamv2SpBTL7FhKkcyp1+n+Kv8Aiae9FfamihW8R1FbUxfL0iri2mHIk52bXm5/XbX97RuaxZEZbZJMeZmJ6iNfcfQ9av8A6yvGimuljW2zn7twZTyIBPXYE7V0t3EEhQhyJAKhQAIPsK8FLTAqbescgdOW3Lkdazcw5t2sz+EgnT8M6AH58vWoPL8SltHvw1Eek85n6hvRgCK8XcMjjyi2/TQqfY7r+9K8G8QFOhDAxyiN6xdxHlIbRhMaEj5Tp8+lWdrKlWiO2FuTAAUdSdPlEz9Kk2+HXI8ThQfSR8tda3WOK5BGWVPInX5EbH9+lacZYnx27yup+FzkYb6H4TtyI9hVd1afPCLEprwjGJ4dbABa7mPQ6Ab7QdRNRDhrOxGb8juOcdP0r0tu43wkiYiOfQDltp6z0qdgOB3LjFCAsRm8QkcxKzz1+lVVWl6qL5T9kVrYm2sgW115x9P3610nZXFkYqzmM+DKZOoL5AoPUwd/WtS8Ht2wWAZiDqYKosaku8ZrYEdekA15s4SYNzQbqglCZEeLmszEbmdZkis+WoqNIuxKpvZ9SpUbAXC1tGOpKqSesga1JrkHWFKUoBSlKAxVJ2yxBTDkAwXIXToZJ+oBHzq7qg7a2S1pDyW4CfQEMs/Uj61PHrvWyF/pZwFoRL5ZVSAw9GOkkcjEfOpVu+QzGGylgYESeR1bSCM0E9WWWgx6tW1TvkfMFcAAgSAwIy5ug0nToar7WKjQxmHzjpuRoQJBBG2+gK9ZLuObT7S+4e9q4GS7FxYMo/iIC5gSJ8SkKU8W4y+ZhJEDinDLgt5c3e2wwKiYurIbTX/uAkGBqDoVc1qu3LbmWzLzzIIcNlnMu0Nm5QpM6wdWxhcReePFFst4nIGWGOYMRGUnc+UE85O8Oyk9oOlrTItzhbqA4uoPFC5s9t5E6kMNMu5gk8p1mumwuBsZCmSAnmuAlHaBcOZ3WMoaBp4FJJh+VU1/FYksGt23CgnIxBZ4k6lo3Myd9Z1FarfECVy3Q9owMr2wFCkZpY2jprJkoQTA0Ne3F2vJ5FzL8ErHcDt20ZSWZWcQyqHuowzRI1LrM+EFWAEidapMRgGXW4RcQkZXBLKSJnU6hv5TBHSptvFXAuYBnSCC4giDOjiDlmfKwYa7c6nYB7V8Eq2SFm4wgLlB1zqQQYGWBAknQLU5dRzXJG0r4ng57B4U5gqKWJJAgSesADnAn5fS0wnCne6tp4XN1ZVkRPhaSrGCNATvUpsStsnurUoQPCWDXB4wQVW4sNMCSARoCHEVoxd1bjBQ5zGCAxyGQV1ViYHmMGda9rJTfHB5EJLnk7Hh6paH2dWKC2BOpUszanMNPTXofnUlriBS5UQRuYyjXQieZn1nqKoOH4trjdzd0uKsJd2JX8F5d16z7kaSK8cUxeVTZuIQQANdQVneRvp05n0rB8Nutf79zZ36RKfEfFmEAjkF2boI8RBjYeWYqRd4xacZLltmQ7zFxTuQMrTGgB0IOs6VypuL4mmBJnUwAehPP3/vWo4rLInTnOo0HPpzrR8GX5K1kpeDpsTwLC4jxWmFtgPgHhJ1jPabbpowmYqps8Bxdu54bYvAc1cKY0gw5DKdOf8AsQ7OMUbkiJAKmcp0mAOo5CDtXTcJ4scsybpUyJ8wHz9j+kivH8TGuHtfU8Uxdba0/oc79tRS1nu0F0Me8LFYgaAIASuYDprqY51JwnFnTVXZY3CuYA3/AO3dDZtjsRsflv7S4Q4u9ns2w7Kq5oIDEEaeExtpudJNV79msQlvOwCZtO7DfeGSQZXb9aun4dSu5pN+zKaWSafam0vcuLvaS/AAS07blmhWjkQkmD8z7VHfilx/PhEeRoc2umpJWR9fb0qx4dwbD20V7ii07KMwuOGUGBOUlh66xzOprzhWsWrKXgjZFcqQrZ9JIOYGQdeh2b2qlXj/APmfclUW/wBT40VWJxSssjBKDPUkba+VhPKsWb6KQWwiyN1zNqRJBJJMCYq3xXCsJjCHtsYChRlbKBBO4ZSQ2v75Q8R2aa3nfvXPoAGyrBjMCwzbneB6bVL4sPh7X5/yefCpcrT/AAL3ELv/AIcKloaGSUEeglhAP+arOJcQulXS4tvKeQdSRrI8rHn6cq2XsV3Qyk3+UELbUrGkhw7ETz31HuDE/wCqozG2wNu2wIYsqu3oVClQsbiJ1ircfp51/JDJ6uNkDD21YgF4kxopY/TQH686kNatLoBdc85K2/yh68YXCkOC7oiz5iZ0nzKiy3qNByqRj7mdmFtzlVpBygFokS7aESJEa71rq23pGSYSXJuwuH0k2UUGIuXS0b7ZiQhJ9vrUp3RQsX7aGRPdiW5aL3KAfVqqbWAa4dGa6xIGgMekn/ddDhuB27Iz3HFxgCe7TwiVElWYb9IPppWXLST9T/b/AL2asUNr0r934IWPxDgr3WY+IM+YokkAz4Mx0iNTsRPtGHF7yqU0UyTsrBT6SCBrz3kzM1f9+q+G2iAGIy6sdNZkdZiIEcqlWOGX70ZkCL1cQYmdFiZ+Qqj40L9SL1hp8JnO4VS75nuNdUAFiwgE6GApOvigk/y6aTVxwbAPfeT5ZGZ4gR+H1Opj3roMH2btL55uHp5V/wDiN/mTVzbQKAAAANgNAPYVmy9Sq/SacXT9v6jKKAABoBoK90pWQ1ilKUApSlAK1YiyrqUYSrCCK20oDguJ8KuWmMnw8miQR68gfQ1TcZwdlWtMMy+bvDbMRI0geXfWIjWvqhqFe4bZfzWbbe6Kf7VpjqWvJnvBvwfNeFGy9zu1ui8Ao0dVLIAYIy7HRt8sa6Cuht3bVoDKBIMZruuh5An9PeukfhlnIUW0tsHmihCI2IIFVt3gPMXPaV167g1J51XkgsDnwQW4rkEuc2xACuPQ8pO52/OK83uJ4e4gR4I0ALAq08iGI9Bz96l3uFXeTJ+a/oDWp+H4jpbOnU/XVaKo8/8AI7a8Mj2eE4ckNbuNbbkyuNOcSBtt1qNxTgF5lAQ22Egk21FtrhGxcDQxuIHy0FTG4bcMZrSMQNCCAetaxgLqxlR0j8Lj+5NSnK09935I1iTWu38HL3eB3EMkMo1mRA+ux9999d6kcOwV+0QwRbgBhQdxO0AnT38m9dRYGKXck/1AH6nNrUm3cuDe0hPUgf4qV9W2tcEZ6dJ75KHD3FmbiW1Kzqji2wiCQBsTI3UL6GvPEL73CEVHvifu0VBnCncFh4dDPOAANav72Z91A9h+u1bcLcNslgCWPP06CqnnXnXJcsL8exT4LsncuBS/3OmqsQ7idYIRiuh5hjVknYjDx4nuseueN+gA/Wdqnf8AUX6V5PEn6VS81v3LVilexAvdiLB1DNMRLAMQNdiAOp/YFUnFuFPhryqqsylSVZNNRoVMnTSNNdD9epPErn4a138YzjKyZh+9QeVSjPafL2jy8MtcFX2dXuw7s3ddVBlmGp3I05bVHx2MbPmVmX+c/eOBJ9QB4hGmuo2rbiuHhjILrG0ww+mlRjwhogNMdQR/c1bNw67mymotT2pFbiMVnBM6GNQPvHymdSDoP3qdaiYbiNy2WKMBmAzqRKkZQDm6sdT8+lWtzgt07Zfqf8VFbs/d/AN530mtsZcWtNoyXiyb2kzFp7mXvrJmAC1pvEBqOR1IIG+46nWp9q8uJi7bBRkP3ttTDkARKsPMNBptp66xMNwXEI2ZfC3XMPp7elTLfCsRC5TbRlbMG1kTvsOfMVHJePyqR7jx34csscKMyAlEu6AknwN4mC2hmjzxuTzHIVqbDYYBmAyOAQFcK0QYlW3Ikbg869pwy5vmCkmTlBidtp/cCt9vg67tmJ3MeGSTJMa85261leRL3NXwm14KzgPDA9xvu0ulVzAMAqmdADlEAyWMkE+GrXFdnHZWcrbVpXLbTwplG4kgeI6axyjmatMCBaXLbthRz6k9STqalDEt0qu+pt1tEo6aFOmUdjhd8oLaolheZkTzkjLMsRpJP+5mE7NoNbjl21JjwDX0BJj51Zi+3Sti3m6VW8tMtWKUMNhEtiEQL6ga/M7mpFaRdPSvYf0qss1o2UryGrM0BmlKUApSlAKUpQClKUApSlAYpFZpQGIrGUV6pQHnKKZB0r1SgPHdjpWO6XpWylAau4XpWPs69K3UoDT9nXpT7OvSt1KA0/Z16VnuV6CttKA09wvQU+zr0rdSgNP2delPs69K3UoDV3C9KCyvSttKA190OlZyDpXulAecg6UyivVKAxFIrNKAxFKzSgFKUoBSlKAUpSgP/9k="),
                                fit: BoxFit.cover)),
                      ),
                      title: Text("Brand New Shoes"),
                      subtitle: Text("Stock: 2"),
                      trailing: Icon(Icons.delete_outline)
                  )
                ],
              ),
            ],
          ),
        );
      }
    }