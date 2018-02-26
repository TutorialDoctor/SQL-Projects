create view content as
select Verses.BookID,VerseID,BookName,Chapter,VerseNum,OsisRef,VerseText from Verses
join Books on Verses.BookID=Books.BookID
where BookName = 'Matthew' and Chapter='1';
select * from content;

select Verses.BookID,VerseID,BookName,Chapter,VerseNum,OsisRef,VerseText from Verses
join Books on Verses.BookID=Books.BookID
where BookName in('Matthew','Mark','Luke','John') and Chapter='1';

/*Clean & Unclean Animals*/
select * from Topics
join TopicIndex on Topics.TopicID=TopicIndex.TopicID
join Verses on TopicIndex.VerseID = Verses.VerseID
where Subtopic like '%clean%' and TopicIndex.VerseID=Verses.VerseID
group by Verses.VerseID;

select * from Topics
join TopicIndex on Topics.TopicID=TopicIndex.TopicID
join Verses on TopicIndex.VerseID = Verses.VerseID
where Subtopic ='Clean and unclean' and TopicIndex.VerseID=Verses.VerseID
group by Verses.VerseID;
