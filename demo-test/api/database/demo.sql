CREATE DATABASE `db` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
use db;

CREATE TABLE IF NOT EXISTS `blog_category` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL UNIQUE
) ENGINE = InnoDB;

INSERT INTO `blog_category`(`name`) VALUES
('Tin thể thao'),
('Tin du lịch'),
('Tin pháp luật'),
('Tin y tế'),
('Tin học đường')
;

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL UNIQUE,
  `image` VARCHAR(100),
  `description` VARCHAR(200),
  `blog_id` INT,
  FOREIGN KEY (blog_id) REFERENCES blogs(id) 
) ENGINE = InnoDB;


INSERT INTO `blogs` VALUES
(null,'Báo chí Đông Nam Á bình luận việc HLV Troussier dẫn dắt tuyển Việt Nam','https://icdn.dantri.com.vn/thumb_w/680/2023/02/17/troussier1q16-2-23-edited-1676553802385-1676605206692.jpeg','Nhiều tờ báo ở Đông Nam Á đã có phản ứng sau khi đội tuyển Việt Nam bổ nhiệm HLV Philippe Troussier vào "ghế nóng".',1),
(null,'Barcelona trả giá đắt cho trận hòa Man Utd','https://icdn.dantri.com.vn/thumb_w/680/2023/02/17/downloaderla-63ee9ee1c8e61-1676582646815.jpg','Ở trận lượt đi vòng 1/16 Europa League trên sân nhà Camp Nou, Barcelona vất vả hòa 2-2 trước Man Utd.',1),
(null,'Ghềnh đá hóa "dải lụa xanh", giới trẻ dậy từ sáng sớm để check-in','https://icdn.dantri.com.vn/thumb_w/680/2023/02/07/dji0006-1675743048247.jpg?watermark=true','Sau đông, tiết trời đầu xuân với những ngày nắng nhẹ là thời điểm mùa rêu ở rạn Nam Ô (TP Đà Nẵng) xanh mướt.',2),
(null,'Du khách tấp nập đi thuyền vượt hẻm vực sâu nhất Đông Nam Á ở Hà Giang','https://icdn.dantri.com.vn/thumb_w/1920/2023/02/12/song-nho-queha-giang2023do-quan-5-1676207628985.jpg','Dòng sông Nho Quế (Hà Giang) có màu nước xanh huyền ảo, uốn lượn quanh những vách núi đá dưới chân đèo Mã Pí Lèng.',2),
(null,'Hai cơ sở đăng kiểm tại Nghệ An hoạt động như thế nào sau khi bị khám xét?','https://icdn.dantri.com.vn/thumb_w/680/2023/02/04/tt-edited-1675498814048.jpeg','Sau thời gian cơ quan chức năng phong tỏa để điều tra về hành vi "Nhận hối lộ" và "Môi giới hối lộ" 2 cơ sở đăng kiểm tại Nghệ An đã hoạt động bình thường trở lại.',3),
(null,'Lái xe ô tô say xỉn, đá vào mặt cán bộ tổ công tác 141','https://icdn.dantri.com.vn/thumb_w/680/2023/02/17/33132376958756595225164586530477949147834638n-1676568293809.jpg','Nguyễn Mạnh Hà không chấp hành kiểm tra nồng độ cồn, đồng thời chửi bới, lăng mạ các cán bộ tổ công tác.',3),
(null,'Dân nhậu "truyền tai" uống thuốc tránh thai khử nồng độ cồn: Bác sĩ nói gì?','https://icdn.dantri.com.vn/thumb_w/680/2023/02/17/3314185965391976583049732205697164827454476n-1676600413464.jpg','Các biện pháp thổi bay nồng độ cồn luôn được dân nhậu "bỏ túi", truyền tai nhau.',4),
(null,'Bộ Y tế quy định như thế nào về nồng độ cồn trong máu?','https://icdn.dantri.com.vn/thumb_w/680/2023/02/17/thoi-nong-do-con-7-1581322973724-1676603096597.jpg','Những ngày gần đây, quy định về nồng độ cồn trong máu lại gây xôn xao dư luận.',4),
(null,'Ông bà bênh chằm chặp, con coi lời mẹ dạy như "gió lùa qua tai"','https://icdn.dantri.com.vn/thumb_w/680/2023/02/12/ong-ba-benh-cham-chap-me-dien-dau-vi-con-ngo-nguocdocx-1676138324989.jpeg','Chị Thiện bực mình mắng con thì ông bà lại bênh chằm chặp và lấy bánh ngọt để dỗ dành cháu.',5),
(null,'Hà Nội khảo sát ý kiến về việc thi 3 hay 4 môn vào lớp 10','https://icdn.dantri.com.vn/thumb_w/680/2023/02/16/anh-chup-man-hinh-2023-02-16-luc-163352-edited-1676541115045.jpeg','Lãnh đạo Sở GD&ĐT Hà Nội xác nhận, UBND thành phố khảo sát, lấy ý kiến giáo viên về việc thi 3 hay 4 môn vào lớp 10 THPT năm 2023- 2024.',5)
;


