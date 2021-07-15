let books = [];

let idCount = 1000;

// constructor
function Book(title, author, totalPages, isRead) {
  this.title = title;
  this.author = author;
  this.totalPages = totalPages;
  this.isRead = isRead;
  this.id = idCount + 1;
  idCount += 1;
  books.push(this);
}

// Books

new Book('Rum Punch', 'Elmore Leonard', 302, true);
new Book('The Invention of Sound', 'Chuck Palahniuk', 240, true);
new Book('American Dirt', 'Jeanine Cummins', 480, false);

for (var i = 0; i < books.length; i++) {
  let libraryCard = document.createElement('div');
  libraryCard.className = "library-card";
  document.getElementById('my-library-container').appendChild(libraryCard);
  libraryCard.innerHTML += '<div class="card-id">' + books[i].id + '</div>';
  libraryCard.innerHTML += '<div class="card-title">' + books[i].title + '</div>';
  libraryCard.innerHTML += '<div class="card-author">By ' + books[i].author + ', ' + books[i].totalPages + ' pages</div>';
  if (books[i].isRead == true) {
    libraryCard.style.backgroundColor = "rgb(148, 204, 148)";
  }
}