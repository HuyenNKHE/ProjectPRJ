USE [Trading2022]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [decimal] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[quantity] [int] NULL,
	[sell_ID] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]


) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'Howard', N'TSR5MR', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'Tana', N'EHS8CM', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (15, N'Echo', N'IGE8TN', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (16, N'Slade', N'OFO6QS', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (21, N'Vera', N'CZB2VM', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (23, N'Katell', N'SFS0IW', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (25, N'Robin', N'KIS9AF', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (27, N'admin', N'123', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (28, N'mra', N'mra', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (29, N'mrb', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (30, N'Camden', N'123', 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'BÁNH SINH NHẬT')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'BÁNH MỲ VÀ BÁNH MẶN')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'COOKIES VÀ MINICAKES')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'PHỤ KIỆN')
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (1, N'Enchanted', 
N'https://lafuong.com/_next/image?url=%2Fapi%2Fassets%2Fpage%2F286619af-d74d-45df-82ed-b6228f0822e8%2FcoverImage%2F0%3Flast_edited_time%3D2023-10-04T15%253A00%253A00.000Z&w=1080&q=75',
590000, N'Cà phê & Cốt dừa', 
N' Enchanted được thiết kế như một hộp quà với những chiếc nơ sô-cô-la trắng thật xinh xắn cùng lớp nền phủ từ bơ cacao nâu mịn như nhung. Là món quà ý nghĩa dành tặng cho những người phụ nữ tinh tế và duyên dáng. Lớp mousse mềm mịn được làm từ cà phê rang xay đậm đà, đi kèm với lớp kem dừa thơm ngậy. Ít ngọt và dễ hợp khẩu vị với tất cả mọi người.', 1, 12, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (2, N'The Terrace', 
N'https://lafuong.com/_next/image?url=%2Fapi%2Fassets%2Fpage%2Fb94b37ef-a60c-4665-be8d-d468dcac63dd%2FcoverImage%2F0%3Flast_edited_time%3D2023-10-04T14%253A59%253A00.000Z&w=1080&q=75',
660000, N'Xoài, Lá dứa & Phô mai', 
N'Chiếc bánh tôn vinh nét tính cách thật đặc biệt của người Phụ nữ Việt Nam, The Terrace đem tới một cảm giác lãng mạn và cuốn hút. Ý tưởng để sáng tạo ra chiếc bánh này là cảm giác tĩnh lặng khi bạn đang đứng trên một chiếc ban công vào buổi sớm mai, hít thở, nhìn ngắm vườn hoa và những chú bướm. Về phần vị, lớp mousse ngoài cùng được làm từ xoài Cát chu tươi, thoang thoảng mùi thơm lá dứa từ bạt bánh, thêm chút ngầy ngậy của creamcheese - kem phômai.

Cân bằng giữa vị ngọt dịu, thơm và ngậy, đây sẽ là một món quà đại diện cho tình cảm mà bạn muốn gửi tặng cho những người phụ nữ xung quanh mình', 1,9, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (3, N'BÁNH HOTDOG', 
N'https://product.hstatic.net/1000313040/product/z4039862845613_72afb806d1f3266fcb496cd46406ecd7_fa0c68ed366147cf9cbf3416a479cfe6_master.jpg', 10000, 
N'Bột mỳ, bơ, muối, phụ gia, xúc xích', N'Bánh hot dog được người Mỹ yêu chuộng bởi sự tiện dụng và nó có mặt ở khắp nơi từ những con phố hiện đại cho đến các khu nhà bình dân.
Đặc biệt bánh hot dog phô mai thơm ngon, béo ngậy sẽ quyến rũ vị giác của người thưởng thức. Với nguyên liệu đơn giản và cách làm bánh hotdog dễ dàng bạn sẽ có ngay những chiếc bánh nóng hổi, ngon khó cưỡng', 2, 56, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (4, N'Secret Garden',
N'https://lafuong.com/_next/image?url=%2Fapi%2Fassets%2Fpage%2F14945dbd-e33b-47a3-a7d0-9c502e1f26b3%2FcoverImage%2F0%3Flast_edited_time%3D2023-10-04T10%253A57%253A00.000Z&w=1080&q=75',
590000, N'Xoài, Lá dứa & Phô mai',
N'Một chiếc bánh tươi mát với lớp mousse làm từ xoài tươi có vị ngọt thanh, Secret Garden trở nên thú vị hơn bởi sự kết hợp của lớp bạt bánh có hương lá dứa tươi và lớp kem phô mai - cream cheese thơm ngậy.

Vẻ ngoài lấp lánh được phủ bởi lớp tráng gương màu xanh bơ và cánh bướm trắng độc đáo từ sô-cô-la nguyên chất, Secret Garden mang thông điệp về sự lãng mạn & tinh thần tự do.', 1, 23, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (5,N'Bộ nến xoắn', 
N'https://lafuong.com/_next/image?url=%2Fapi%2Fassets%2Fpage%2Ff26d8df9-de41-418e-a292-a4ef568ef085%2FcoverImage%2F0%3Flast_edited_time%3D2023-08-12T17%253A37%253A00.000Z&w=1080&q=75',
15000, N'06 chiếc nến xoắn'
, N'Nến cao 16cm & phủ nhũ vàng đồng.

Dù mỗi chiếc bánh sinh nhật của LaFuong đã được tặng kèm với một chiếc nến thẳng, nhưng nếu bạn cảm thấy chưa đủ thì bộ nến xoắn này sẽ làm cho chiếc bánh trở nên độc đáo hơn.

P/s: Bánh ngọt nhỏ - Half Entremet không đi kèm nến tặng, nên nếu bạn cần nến thì đừng quên chọn thêm bộ nến xoắn vào giỏ hàng nhé!', 4, 138, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (6, N'BÁNH CUỘN CA CAO',
N'https://product.hstatic.net/1000313040/product/z4039861122592_86d3004a3f85156d2c809762d47934b0_396ff93bb13c4310a0a3a5a7d25002d9_master.jpg', 
75000, N'Bột mỳ, trứng, đường, sữa tươi, dầu ăn, bột sữa, kem bơ, bột ca cao.', 
N'Bánh Cuộn Cacao - món ăn vặt thơm ngon, hấp dẫn, cho các bữa trà chiều.',3, 93,6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (7, N'One Sunny Day', 
N'https://lafuong.com/_next/image?url=%2Fapi%2Fassets%2Fpage%2F563be068-1072-482a-81d3-6397a743c971%2FcoverImage%2F0%3Flast_edited_time%3D2023-08-12T17%253A34%253A00.000Z&w=1080&q=75', 585000, N'Dừa, Xoài & Chanh leo',
N'Được làm từ dừa non, xoài và chanh leo, One Sunny Day luôn là vị bánh được lòng tất cả mọi người. Lớp mousse dừa thơm ngậy, kem chanh leo chua nhẹ, lớp mứt xoài nấu tay kết hợp với bạt bánh dừa xốp mềm; cùng tạo hình được phủ bởi lớp tráng gương màu vàng rực rỡ như những ngày nắng đẹp trời, One Sunny Day là chiếc bánh tràn ngập hương vị của vùng nhiệt đới.', 1, 14,6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [quantity]) VALUES (8, N'PARMESAN SEAWEED COOKIES',
N'https://product.hstatic.net/1000313040/product/z4039863605906_b3d5a0ebb58cd33cb80bfae7690e93c7_af3f01139952477c8b4127ec073536aa_master.jpg', 
50000, N'Khối lượng 150GR', 
N'Bột mỳ, bơ, phomai parmesan, lá rong biển, lòng trắng trứng, đường xay.', 3, 15, 48)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (9, N'BÁNH MÌ HOA CÚC', 
N'https://product.hstatic.net/1000313040/product/18-51_bd9ed00a38804216af8bc30acf65d727_master.jpg', 75000, N'Bột mì,kem whipping,hạnh nhân.', 
N'Bánh mì hoa cúc là tên thường gọi của chiếc bánh Harrys Brioche Tressée. Đây thực chất là một loại bánh mì trên dòng Viennoiserie của nước Pháp, mang rất nhiều hình dạng từ thắt bím quen thuộc cho đến dạng gối, chứ không bó buộc dạng thắt bím như ở Việt Nam chúng ta. Chiếc bánh này với từng thớ tơi như sợi chỉ, mang vị thơm lừng mùi bơ và hương hoa cam đặc trưng.', 3, 178, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (10, N'PASSION CHOCOLATE',
N'https://product.hstatic.net/1000313040/product/6__1__master.jpg', 6000, N' Socola,Chanh leo ',
N'Lớp vỏ socola đen ngọt ngào hòa quyện cùng vị chua nhẹ nhàng của nhân chanh dây tạo nên sự hấp dẫn khi thưởng thức "Passion Fruit Praline"', 3, 133, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (11, N'A Little Grace',
N'https://lafuong.com/_next/image?url=%2Fapi%2Fassets%2Fpage%2F6e4b2abf-0376-4966-9605-93c767298d4e%2FcoverImage%2F0%3Flast_edited_time%3D2023-10-04T10%253A58%253A00.000Z&w=1080&q=75',
645000, N'Trà Earlgrey, Cam & Sô-cô-la',
N'Đậm đà vị trà Earl Grey trong lớp kem mousse, cùng sự tươi mới của mứt cam ruột đỏ được nấu chậm và chút ngọt ngào của lớp crémeux làm từ sô-cô-la đen, A Little Grace được trang trí với tone màu trắng và một chiếc nơ làm thủ công từ sô-cô-la mang lại vẻ ngoài nhẹ nhàng và tao nhã.

Nếu bạn tìm kiếm một chiếc bánh tối giản nhưng vẫn có chút đáng yêu thì A Little Grace là lựa chọn phù hợp.', 1, 17, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (12, N'PATESO MINI', 
N'https://product.hstatic.net/1000313040/product/18-28_2648c4c43eea40d78436eba486e771b3_master.jpg',
10000, N'Bột mỳ, Bơ, Thịt lợn xay, Hành, Gia vị', 
N'ánh pateso mini hay còn gọi là pateso nhỏ (patechaud nhỏ), thuộc dòng bánh nướng teabreak nhân mặn. Bánh còn gọi là bánh bột ngàn lớp vì vỏ ngoài có rất nhiều lớp. Bánh rất được ưa chuộng trong các tiệc teabreak, hội họp, đám tiệc...Bánh pateso mini dùng rất vừa vặn cho từng thực khách, dùng điểm tâm, ăn trưa hay xế đều rất ngon. Vỏ bánh dày nhưng rất xốp vì làm từ rất nhiều lớp (nên gọi là bánh ngàn lớp), bánh nướng lên thơm phức, từ vỏ bánh đến nhân bánh. Nhân bánh đậm đà từ mùi hành tiêu, trộn với thịt', 2, 67, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (13, N'Thiệp chúc mừng', 
N'https://lafuong.com/_next/image?url=%2Fapi%2Fassets%2Fpage%2Ff93ba8be-e306-4544-b38c-1c9a5d51ff13%2FcoverImage%2F0%3Flast_edited_time%3D2023-08-12T17%253A37%253A00.000Z&w=1080&q=75',
12000, N'Kích thước A6',
N'Để những lời thương yêu được gửi đi.

Không chỉ đơn thuần là tặng một chiếc bánh, LaFuong hiểu rằng mỗi món quà trao đi sẽ luôn đi cùng với những thông điệp quan trọng. Nếu bạn muốn gửi thiệp kèm bánh và không tiện tự viết tay, LaFuong sẽ giúp bạn in những điều bạn muốn gửi gắm lên thiệp hoàn toàn miễn phí.

P/s: Điền nội dung bạn muốn in lên thiệp ở phần giỏ hàng nhé!', 4, 453, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (14, N'Orient Scent', 
N'https://lafuong.com/_next/image?url=%2Fapi%2Fassets%2Fpage%2F00c1d60a-03f7-4bee-8719-557c35fdcbcb%2FcoverImage%2F0%3Flast_edited_time%3D2023-08-12T17%253A34%253A00.000Z&w=1080&q=75', 
590000, N'Xoài, Lá dứa & Phô mai',
N'Một chiếc bánh có thiết kế tối giản, lịch thiệp, nhưng chứa đựng một ý nghĩa sâu sắc.

Chiếc bánh Orient Scent được ra đời với thông điệp về sự đủ đầy & tốt lành. “Trời tròn - Đất vuông” đơn giản như vậy, tạo hình trên nền tráng gương màu xanh lá dịu mát có hình vuông tượng trưng cho đất & hình tròn tượng trưng cho trời. Hương vị chủ đạo là xoài tươi và lá dứa - đậm chất Châu Á, kết hợp thêm cùng phô-mai cream cheese của Châu Âu, chiếc bánh này sẽ đem lại cảm giác tươi mát, thơm ngậy và ngọt dịu khi thưởng thức.', 1, 5, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (15, N'PETIT HOA QUẢ', 
N'https://product.hstatic.net/1000313040/product/img_5165_d2ebd3b842bf47479b33a8039df65222_master.jpg', 700000,
N'kem whipping, hoa quả', N'Petit là những siêu phẩm bánh ngọt được lựa chọn nhiều nhất trong các bữa tiệc tất niên
Sở hữu diện mạo đẹp mắt, hương  vị tuyệt ngon dễ kết hợp với các kiểu tiệc trà càng làm cho những sản phẩm này trở nên quen thuộc và gần gũi ', 3, 28, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (16, N'Topper', 
N'https://lafuong.com/_next/image?url=%2Fapi%2Fassets%2Fpage%2Fcded17fe-bf23-46a2-b829-397e9ea3d948%2FcoverImage%2F0%3Flast_edited_time%3D2023-08-12T17%253A37%253A00.000Z&w=1080&q=75', 
29000, N'Chất liệu mica dày 2mm',
N'Topper phủ nhũ vàng đồng được LaFuong thiết kế với thông điệp dành cho những bữa tiệc mà bạn muốn ăn mừng.

P/s: Nếu bạn đang đặt một chiếc Bánh ngọt nhỏ - Half Entremet của LaFuong thì chiếc Topper này sẽ giúp cho chiếc bánh trở nên ấn tượng hơn!', 4, 327, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (17, N'PHOMAI TIÊU', 
N'https://product.hstatic.net/1000313040/product/bkr030_-_b_nh_pho_mai_ti_u_master.jpg', 
30000, N'Bột mỳ, men, muối, phụ gia, đường, bơ, phomai cheddar, jambon, hương sữa, đầu ăn.',
N'', 2, 168,1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (18, N'MUFFIN VANI', 
N'https://product.hstatic.net/1000313040/product/18-73_7b0812b526b245429336f4254be47ce1_master.jpg', 
15000, N'Gato vị vani, Hạnh nhân cắt lát', 
N'Bánh vô cùng mềm xốp, bùi bùi nhờ có hạnh nhân quyện trong bánh, thơm nức mùi vani và ngọt thanh.', 3, 78, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (19, N'Chocories', 
N'https://lafuong.com/_next/image?url=%2Fapi%2Fassets%2Fpage%2F678e45be-f35f-418a-a276-bc1dd2c620a3%2FcoverImage%2F0%3Flast_edited_time%3D2023-08-12T17%253A36%253A00.000Z&w=1080&q=75', 
340000, N'Socola, Dâu rừng & Vani', 
N'Vừa có vị đậm đà của sô-cô-la, lại vừa có sự bùng nổ của quả mọng, Chocories là sự kết hợp của lớp mousse được làm từ sô-cô-la đen chất lượng cao đi cùng mứt quả dâu rừng được nấu tay và một lớp crémeux làm từ quả vanilla Madagascar. Bạn nhất định sẽ thích chiếc bánh này nếu bạn là fan của sô-cô-la.', 1, 25, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (20, N'GATO CUỘN TRÀ XANH', 
N'https://product.hstatic.net/1000313040/product/z4039860164134_08547212311d0529ac929c027ddf77c5_b836c1b955714ddd875ad2bc8b429c98_master.jpg', 
75000, N'Bột mỳ, trứng, đường, sữa tươi, dầu ăn, bột sữa, kem bơ bột trà xanh.', 
N'Bánh cuộn trà xanh là một trong những lựa chọn hàng đầu của các tín đồ mê đồ ngọt bởi bánh mềm mịn hương vị đặc trưng của trà xanh, dễ ăn mà cách làm lại còn đơn giản.', 3, 23, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES (21, N'BÁNH MÌ CHUỘT', 
N'https://product.hstatic.net/1000313040/product/18-58_b7f6e861b93448a58554f14beb15e6ad_master.jpg', 
3000, N'Bột mỳ, Muối, Phụ gia', 
N'Bánh mì là một món ăn vô cùng quen thuộc với người Việt Nam. Bánh mì có thể dùng để ăn kèm với nhiều món khác nhau như trứng ốp la, sữa đặc,... đều vô cùng thơm ngon hấp dẫn.', 3,247,7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES  (22, N'COCONUT CHOCOLATE & CASHEWNUT- SOCOLA DỪA HẠT ĐIỀU', 
N'https://product.hstatic.net/1000313040/product/qg8a6489__1__b44ac40318b74540bed86b1c38173341_master.jpg', 
15000, N'Socola, sữa, dừa, hạt điều', 
N'SOCOLA DỪA HẠT ĐIỀU là loại bánh có giá trị dinh dưỡng cao, cung cấp nhiều năng lượng, vitamin, khoáng chất. 30g bánh quy sẽ cung cấp khoảng 130 kcal, đảm bảo cho một bữa sáng nhanh, gọn, đủ năng lượng.

Bánh quy socola còn là loại thực phẩm tốt cho sức khỏe nhờ những công dụng của socola.', 3, 136, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES  (23, N'Gato cắt Mousse Xoài', 
N'http://parisgateaux.vn/wp-content/uploads/2021/12/z2989931958056_f18c3b065aac4c8dd897ec0ccf5c9ff7-300x300.jpg',
65000, N'phomai, kem tươi, xoài, cherry đỏ', 
N'Thành phần: Gato Vanilla, phomai, kem tươi, xoài xay nhuyễn, Bơ nhập khẩu, Sữa tươi,trứng, socola, cherry đỏ, và thành phần khác…
Bánh mousse xoài có màu sắc bắt mắt, cốt bánh thì mềm mướt chua ngọt, béo ngậy. ', 3, 37, 1)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES  (24, N'Bánh pizza gà phomai Mozzarela', 
N'http://parisgateaux.vn/wp-content/uploads/2023/06/Banh-pizza-ga-phomai-Mozzarela-300x269.jpg',
43000, N'Bột mỳ, Bơ, T, phomai sợi,…', 
N'Đây chắc chắn là một món ăn hấp dẫn dành cho tín đồ mê pizza và phô mai..

Phần vỏ bánh vừa giòn vừa mềm, bên trên được phủ đầy thịt gà và phô mai mozzarella béo ngậy khiến ai cũng phải xiêu lòng.', 2, 58, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES  (25, N'Bánh mỳ Hoa cúc hạnh nhân', 
N'http://parisgateaux.vn/wp-content/uploads/2021/09/27b5d3b291e258bc01f3-300x300.jpg',
42000,N'Hạnh nhân lát, Sữa tươi, trứng, vừng trắng và thành phần khác', 
N'Bánh mỳ hoa cúc còn tên gọi khác là Harrys Brioche có nguồn gốc từ nước Pháp. Chiếc bánh “gây nghiện” nhiều người bởi hương thơm nức mũi, từng thớ bánh dai mềm. Gọi là bánh mỳ hoa cúc nhưng
thành phần lại không hề có hoa cúc. Sở dĩ có tên gọi bánh mì hoa cúc bởi những chiếc bánh nướng xong sẽ nở bung từng bím vàng ươm trông nhưng đóa hoa cúc vậy. Chiếc bánh thơm nức mùi bơ và hương hoa cam.',  2, 95, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES  (26, N'Gato cắt Red Velvet',
N'http://parisgateaux.vn/wp-content/uploads/2021/06/C350-Red-velvet-300x269.jpg',
65000, N'Gato men gạo đỏ, Phô mai,Socola',
N'Bánh Red velvet của Origato có độ ngọt vừa phải, thanh mát, dịu nhẹ, tươi ngon 100%. Đặc biệt, bánh tại Origato không dùng phụ gia, hương liệu, chất bảo quản, bánh tươi 100% sản xuất theo quy trình Nhật Bản, đảm bảo vệ sinh an toàn thực phẩm. Các nguyên liệu được nhập khẩu từ các thương hiệu nổi tiếng 
của nước ngoài… mang đến cho khách hàng những hương vị bánh hảo hạng, đẳng cấp', 3, 107, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES  (27,N'Sukem Puff (1 Hộp Mua 5 tặng 1)', 
N'http://parisgateaux.vn/wp-content/uploads/2020/06/C359-Sukem-Puff-Mua-5-tang-1-300x269.jpg',
95000, N'1 Hộp Sukem Puff '
, N'Thành phần: Vỏ bánh Puoluo tươi nóng giòn xốp hảo hạng, Nhân cream vani mát lạnh, Sữa tươi hảo hạng, Bơ Australia, Kem tươi, mua 5 tặng 1 là 6 chiếc gồm 3 vị tùy chọn Dâu tây, Vani & Socola', 3, 53, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES  (28, N'BÁNH MÌ BRAIDED PASTE',
N'https://origato.com.vn/wp-content/uploads/2023/07/z4515694492178_c395330206d2764d148dcb7aa5a0cf3e.jpg', 
75000, N'Bột ngũ cốc, paste, bơ tươi, trứng…',
N'Bánh phù hợp để ăn sáng, dùng làm bữa nhẹ, tea break …Lưu ý: Không dùng cho người dị ứng với các thành phần của sản phẩm
Dòng bánh mì dinh dưỡng cao cấp HEAT được làm từ những nguyên liệu giàu dinh dưỡng và có lợi cho sức khỏe, một trong số đó chính là hạt lúa mạch nảy mầm ngâm trong men tự nhiên sourdough. Được trồng trên những cánh đồng rộng lớn tại Estonia – Nơi có khí hậu 
ôn hòa và được mệnh danh là đất nước có thiên nhiên trong lành nhất thế giới. Hạt lúa mạch nảy mầm ngâm trong men tự nhiên Sourdough khi kết hợp với các nguyên liệu thân thuộc khác như; xúc xích, chà bông, củ quả…giúp bánh mì có hương vị thơm ngon hơn và mang lại nhiều lợi ích thiết yếu cho sức khỏe như: kiểm soát lượng đường trong máu, giúp tiêu hóa tốt hơn và đặc biệt là giải phóng các chất chống oxi hóa cao.',2,93,6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES  (29, N'GUSTO CỐM DỪA', 
N'https://origato.com.vn/wp-content/uploads/2023/07/IMG_6078-scaled.jpg', 23000, N'Trứng gà, sữa tươi, bột mì, bơ…',
N'Dòng bánh mini cake phù hợp để ăn sáng, ăn tráng miệng, dùng làm bữa nhẹ, dùng cho các sự kiện, tea break hoặc các bữa tiệc lớn…', 3, 37, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES  (30, N'RAINBOW CAKE',
N'https://origato.com.vn/wp-content/uploads/2023/05/phu-kien-11.png', 
59000, N'Trứng gà, sữa tươi, bột mì, bơ…', 
N'Dòng bánh mini cake phù hợp để ăn sáng, ăn tráng miệng, dùng làm bữa nhẹ, dùng cho các sự kiện, tea break hoặc các bữa tiệc lớn…', 3,74, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES  (31, N'CHÀ BÔNG CAY RONG BIỂN', 
N'https://origato.com.vn/wp-content/uploads/2023/05/phu-kien-12.png', 54000, N'Trứng gà, sữa tươi, bột mì, bơ…', 
N'Dòng bánh mini cake phù hợp để ăn sáng, ăn tráng miệng, dùng làm bữa nhẹ, dùng cho các sự kiện, tea break hoặc các bữa tiệc lớn…', 3,65, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES  (32, N'MOUSSE SỮA CHUA CAFE',
N'https://origato.com.vn/wp-content/uploads/2023/03/IMG_6052-Copy.jpg', 20000, N'Trứng gà, sữa tươi, bột mì, bơ… ',
N'Dòng bánh mini cake phù hợp để ăn sáng, ăn tráng miệng, dùng làm bữa nhẹ, dùng cho các sự kiện, tea break hoặc các bữa tiệc lớn…', 2,59, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [quantity], [sell_ID]) VALUES  (33, N'COLORFUL ROLL CAKE',
N'https://origato.com.vn/wp-content/uploads/2022/06/IMG_6385-Copy.jpg',
62000, N'Trứng gà, sữa tươi, bột mì, bơ…',
N'Dòng bánh mini cake phù hợp để ăn sáng, ăn tráng miệng, dùng làm bữa nhẹ, dùng cho các sự kiện, tea break hoặc các bữa tiệc lớn…', 3,74, 17)

SET IDENTITY_INSERT [dbo].[product] OFF
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[maHD] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NULL,
	[tongGia] [float] NULL,
	[ngayXuat] [datetime] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoLuongDaBan]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoLuongDaBan](
	[productID] [int] NULL,
	[soLuongDaBan] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TongChiTieuBanHang]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TongChiTieuBanHang](
	[userID] [int] NULL,
	[TongChiTieu] [float] NULL,
	[TongBanHang] [float] NULL
) ON [PRIMARY]
GO
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (1, 1, 999, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (2, 1, 800, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (3, 1, 400, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (4, 1, 511.2, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (5, 1, 241.20000000000002, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (6, 1, 392.40000000000003, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (7, 1, 482.40000000000003, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (8, 2, 300, CAST(N'2021-11-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (9, 2, 400, CAST(N'2021-11-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (10, 1, 180, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (11, 1, 1079.1000000000001, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (12, 1, 122.4, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (13, 1, 1394.1000000000001, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (14, 2, 256, CAST(N'2021-10-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (15, 3, 450, CAST(N'2021-10-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (16, 2, 200, CAST(N'2021-09-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (17, 2, 100, CAST(N'2021-08-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (18, 3, 156, CAST(N'2021-07-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (19, 3, 256, CAST(N'2021-06-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (20, 3, 158, CAST(N'2021-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (21, 2, 800, CAST(N'2021-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (22, 3, 750, CAST(N'2021-03-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (23, 2, 657, CAST(N'2021-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (24, 1, 800, CAST(N'2021-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (25, 1, 1491.6, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (26, 1, 396, CAST(N'2021-11-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (27, 1, 761.2, CAST(N'2021-11-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (28, 1, 1687.4, CAST(N'2021-11-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (29, 1, 1760, CAST(N'2021-11-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (30, 1, 2175.8, CAST(N'2021-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (31, 1, 396, CAST(N'2021-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (32, 1, 739.2, CAST(N'2021-12-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (33, 1, 567.6, CAST(N'2021-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (34, 1, 803, CAST(N'2021-12-14T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Invoice] OFF
go
