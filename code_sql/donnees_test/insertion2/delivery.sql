--
-- INSERT DELIVERY
--

INSERT INTO delivery (delivery_time,id_delivery_mode)
    VALUES
('15-01-2018 23:05:32',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('19-11-2018 03:36:07',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('12-08-2018 10:50:32',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('11-03-2018 19:15:47',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('20-08-2018 07:51:25',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('08-07-2018 13:21:33',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('05-03-2018 00:43:02',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('12-07-2018 23:18:40',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('23-09-2018 18:31:40',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('19-08-2018 22:40:50',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('15-08-2018 15:46:18',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('19-09-2018 20:10:59',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('31-01-2018 05:17:21',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('24-08-2018 10:56:35',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('24-09-2018 14:05:21',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('23-04-2018 15:19:31',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('25-08-2018 20:44:50',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('20-09-2018 10:24:13',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('23-03-2018 07:20:15',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('10-06-2018 04:52:35',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('18-12-2018 19:38:58',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('29-08-2018 11:42:38',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('07-09-2018 19:42:54',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('21-08-2018 18:23:43',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('27-12-2018 01:59:30',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('24-02-2018 18:01:57',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('26-10-2018 22:19:09',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('14-01-2018 05:58:40',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('29-06-2018 09:25:54',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('07-07-2018 03:29:36',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('06-09-2018 02:36:19',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('05-09-2018 18:50:33',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('21-12-2018 05:00:16',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('28-11-2018 03:01:01',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('23-02-2018 18:58:48',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),
('23-09-2018 03:49:03',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('19-10-2018 09:54:00',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('14-02-2018 08:48:58',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('10-02-2018 21:35:47',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('30-11-2018 17:21:52',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('03-09-2018 04:28:53',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('15-05-2018 21:51:49',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('07-03-2018 14:25:02',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('02-07-2018 08:05:20',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('04-06-2018 16:28:29',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('26-12-2018 23:13:30',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('02-08-2018 13:21:04',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('28-10-2018 16:23:31',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('25-01-2018 15:19:51',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('06-08-2018 08:06:30',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('13-05-2018 21:47:55',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('10-01-2018 19:22:07',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('30-07-2018 17:45:52',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('20-12-2018 20:26:34',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('09-10-2018 03:04:41',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('15-05-2018 13:37:07',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('25-03-2018 09:39:48',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('06-09-2018 08:36:19',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('30-06-2018 15:31:47',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('30-11-2018 23:08:25',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('14-04-2018 07:40:39',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('22-09-2018 16:13:13',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('10-02-2018 12:44:15',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('17-08-2018 21:25:50',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('07-10-2018 17:51:52',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('10-12-2018 19:56:45',
   (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('10-06-2018 02:36:03',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('21-07-2018 14:35:06',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('09-01-2018 07:20:55',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('12-12-2018 00:11:38',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('29-10-2018 23:31:34',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('05-09-2018 04:01:02',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('15-05-2018 04:08:06',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('25-12-2018 14:38:30',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('18-12-2018 07:36:26',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('10-12-2018 23:26:15',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('02-09-2018 09:54:23',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('06-10-2018 05:42:42',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('25-11-2018 23:27:20',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('26-12-2018 23:43:07',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('13-09-2018 18:53:50',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('24-02-2018 14:29:15',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('01-07-2018 09:38:17',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('27-11-2018 20:59:06',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('14-06-2018 19:57:00',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('30-08-2018 15:31:02',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('09-07-2018 03:19:47',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('10-04-2018 04:52:28',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('30-11-2018 02:26:12',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('18-10-2018 05:04:46',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('09-08-2018 12:54:49',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('20-10-2018 09:29:25',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('27-02-2018 23:46:40',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
),

('18-08-2018 12:02:21',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('07-07-2018 11:50:32',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('22-06-2018 01:47:16',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('29-11-2018 12:53:53',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('20-05-2018 15:00:28',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('13-01-2018 11:04:12',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1 OFFSET 1)
),

('23-11-2018 04:33:04',
  (SELECT id FROM delivery_mode ORDER BY id LIMIT 1)
);
