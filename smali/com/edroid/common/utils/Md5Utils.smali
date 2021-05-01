.class public final Lcom/edroid/common/utils/Md5Utils;
.super Ljava/lang/Object;
.source "Md5Utils.java"


# static fields
.field private static final hexDigitsChr:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/edroid/common/utils/Md5Utils;->hexDigitsChr:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromFile(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    .line 90
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x400

    .line 93
    :try_start_1
    new-array p0, p0, [B

    .line 95
    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 96
    invoke-virtual {v1, p0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 105
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 107
    :catch_1
    :cond_2
    throw p0

    :catch_2
    move-object v2, v0

    :catch_3
    if-eqz v2, :cond_3

    .line 105
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_3
    return-object v0
.end method

.method public static fromFileS(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 114
    invoke-static {p0}, Lcom/edroid/common/utils/Md5Utils;->fromFile(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/edroid/common/utils/Md5Utils;->md2s([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static md2s([B)Ljava/lang/String;
    .locals 8

    .line 47
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 48
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 52
    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 55
    sget-object v6, Lcom/edroid/common/utils/Md5Utils;->hexDigitsChr:[C

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    add-int/lit8 v3, v5, 0x1

    .line 56
    sget-object v6, Lcom/edroid/common/utils/Md5Utils;->hexDigitsChr:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static md516(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/edroid/common/utils/Md5Utils;->md516([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md516([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-static {p0, v0}, Lcom/edroid/common/utils/Md5Utils;->md516([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md516([B[B)Ljava/lang/String;
    .locals 1

    .line 77
    invoke-static {p0, p1}, Lcom/edroid/common/utils/Md5Utils;->md532([B[B)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x8

    const/16 v0, 0x18

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md532(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/edroid/common/utils/Md5Utils;->md532([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md532([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-static {p0, v0}, Lcom/edroid/common/utils/Md5Utils;->md532([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md532([B[B)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    .line 31
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 38
    invoke-static {p0}, Lcom/edroid/common/utils/Md5Utils;->md2s([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
