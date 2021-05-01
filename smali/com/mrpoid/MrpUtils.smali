.class public Lcom/mrpoid/MrpUtils;
.super Ljava/lang/Object;
.source "MrpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/MrpUtils$MrpInfo;
    }
.end annotation


# static fields
.field static final charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GBK"

    .line 19
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/MrpUtils;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToInt([BI)I
    .locals 1

    const/4 p1, 0x0

    .line 68
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    const/4 v0, 0x3

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static readMrpId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 47
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x10

    .line 48
    :try_start_1
    new-array p0, p0, [B

    const-wide/16 v2, 0x10

    .line 50
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0xc

    const/4 v3, 0x0

    .line 51
    invoke-virtual {v1, p0, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    aput-byte v3, p0, v2

    .line 54
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/mrpoid/MrpUtils;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 56
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    return-object v0

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 61
    :catch_4
    throw p0
.end method

.method public static readMrpInfo(Ljava/lang/String;)Lcom/mrpoid/MrpUtils$MrpInfo;
    .locals 7

    .line 75
    new-instance v0, Lcom/mrpoid/MrpUtils$MrpInfo;

    invoke-direct {v0}, Lcom/mrpoid/MrpUtils$MrpInfo;-><init>()V

    const/4 v1, 0x0

    .line 79
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x64

    .line 80
    :try_start_1
    new-array p0, p0, [B

    const-wide/16 v3, 0x1c

    .line 83
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v1, 0x16

    const/4 v3, 0x0

    .line 84
    invoke-virtual {v2, p0, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 85
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/mrpoid/MrpUtils;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v3, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mrpoid/MrpUtils$MrpInfo;->label:Ljava/lang/String;

    const-wide/16 v4, 0x10

    .line 87
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v1, 0xd

    .line 88
    invoke-static {p0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0xc

    .line 89
    invoke-virtual {v2, p0, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 90
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/mrpoid/MrpUtils;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v3, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mrpoid/MrpUtils$MrpInfo;->name:Ljava/lang/String;

    const-wide/16 v4, 0x44

    .line 92
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x5

    .line 93
    invoke-static {p0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/4 v4, 0x4

    .line 94
    invoke-virtual {v2, p0, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 95
    invoke-static {p0, v3}, Lcom/mrpoid/MrpUtils;->byteArrayToInt([BI)I

    move-result v5

    iput v5, v0, Lcom/mrpoid/MrpUtils$MrpInfo;->appid:I

    const-wide/16 v5, 0x48

    .line 97
    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 98
    invoke-static {p0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 99
    invoke-virtual {v2, p0, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 100
    invoke-static {p0, v3}, Lcom/mrpoid/MrpUtils;->byteArrayToInt([BI)I

    move-result v1

    iput v1, v0, Lcom/mrpoid/MrpUtils$MrpInfo;->version:I

    const-wide/16 v4, 0x58

    .line 102
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v1, 0x28

    .line 103
    invoke-static {p0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x26

    .line 104
    invoke-virtual {v2, p0, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 105
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/mrpoid/MrpUtils;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v3, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mrpoid/MrpUtils$MrpInfo;->vendor:Ljava/lang/String;

    const-wide/16 v4, 0x80

    .line 107
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v1, 0x3e

    .line 108
    invoke-static {p0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x3c

    .line 109
    invoke-virtual {v2, p0, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 110
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/mrpoid/MrpUtils;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v3, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/mrpoid/MrpUtils$MrpInfo;->detail:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 112
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_1
    return-object v0

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 117
    :catch_3
    throw p0
.end method

.method public static readMrpLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 24
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x20

    .line 25
    :try_start_1
    new-array p0, p0, [B

    const-wide/16 v2, 0x1c

    .line 27
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0x18

    const/4 v3, 0x0

    .line 28
    invoke-virtual {v1, p0, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    aput-byte v3, p0, v2

    .line 31
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/mrpoid/MrpUtils;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v4

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 33
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    return-object v0

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 38
    :catch_4
    throw p0
.end method
