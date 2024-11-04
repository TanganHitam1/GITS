# GITS

Kompleksitas algoritma bracket:

pada function bracket:

`String bracket(String str) {}`

Hanya memiliki 1 looping saja, dimana looping dimulai dari `0-n`, dimana `n` merupakan nilai dari `str.length` sehingga kompleksitas waktunya adalah `O(n)`

---



Selain itu terdapat 3 variabel yang akan menggunakan memori tambahan yang dibutuhkan program pada saat dijalankan yaitu 

`List<String> open`

`List<String> close`

`List<String> stack`

Dimana variabel `open` dan `close` memiliki ukuran yang tetap yaitu 3, sehingga memiliki kompleksitas ruang `O(1)`

Sedangkan untuk variabel `stack` menggunakan digunakan untuk menyimpan bracket yang belum dipasangkan, jadi jika terdapat kasus variabel `stack` ini menyimpan data terbanyak yang bisa ditampung, jumlah data yang bisa ditampung adalah `n` yang merupakan panjang dari `str` yang berisikan bracket dari parameter function. Sehingga kompleksitas ruangnya adalah `O(n)`

Dengan adanya kedua kompleksitas ruang tersebut, skenario terburuk adalah `O(n)` karena `O(1)` pada `open` dan `close` menandakan tidak ada perubahan data, sedangkan `O(n)` pada `stack` bergantung pada nilai `n`, semakin tinggi nilai `n` semakin tinggi juga memori yang diperlukan tetapi tidak terlalu membebni karena tidak menghasilkan kompleksitas seperti `O(2^n)`,  `O(n!)` yang mengindikasikan pertumbuhan kebutuhkan memori yang digunakan yang sangat cepat saat nilai `n` meningkat

---

Dengan begitu hasil kompleksitas dari function bracket ini adalah:

Kompleksitas waktu: `O(n)`

Kompleksitas ruang: `O(n)`

Sehingga menunjukkan function bracket cukup efisien karena kompleksitas waktu dan ruang yang linear terhadap perubahan panjang input, bukan berbentuk kurva
