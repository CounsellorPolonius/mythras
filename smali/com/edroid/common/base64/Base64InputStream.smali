.class public Lcom/edroid/common/base64/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# instance fields
.field private buffer:[I

.field private bufferCounter:I

.field private eof:Z

.field private inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/edroid/common/base64/Base64InputStream;->bufferCounter:I

    .line 59
    iput-boolean v0, p0, Lcom/edroid/common/base64/Base64InputStream;->eof:Z

    .line 70
    iput-object p1, p0, Lcom/edroid/common/base64/Base64InputStream;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method private acquire()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 93
    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/edroid/common/base64/Base64InputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    if-eqz v3, :cond_1

    .line 99
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/edroid/common/base64/Base64InputStream;->buffer:[I

    .line 102
    iput-boolean v6, p0, Lcom/edroid/common/base64/Base64InputStream;->eof:Z

    return-void

    :cond_2
    int-to-char v4, v4

    .line 107
    sget-object v7, Lcom/edroid/common/base64/Shared;->chars:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v5, :cond_4

    sget-char v7, Lcom/edroid/common/base64/Shared;->pad:C

    if-ne v4, v7, :cond_3

    goto :goto_0

    :cond_3
    const/16 v7, 0xd

    if-eq v4, v7, :cond_5

    const/16 v7, 0xa

    if-eq v4, v7, :cond_5

    .line 110
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    add-int/lit8 v7, v3, 0x1

    .line 108
    aput-char v4, v1, v3

    move v3, v7

    :cond_5
    if-lt v3, v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v0, :cond_8

    .line 115
    aget-char v7, v1, v3

    sget-char v8, Lcom/edroid/common/base64/Shared;->pad:C

    if-eq v7, v8, :cond_6

    if-eqz v4, :cond_7

    .line 117
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez v4, :cond_7

    const/4 v4, 0x1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x3

    .line 126
    aget-char v4, v1, v3

    sget-char v7, Lcom/edroid/common/base64/Shared;->pad:C

    const/4 v8, 0x2

    if-ne v4, v7, :cond_b

    .line 127
    iget-object v4, p0, Lcom/edroid/common/base64/Base64InputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-eq v4, v5, :cond_9

    .line 128
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_9
    iput-boolean v6, p0, Lcom/edroid/common/base64/Base64InputStream;->eof:Z

    .line 131
    aget-char v4, v1, v8

    sget-char v5, Lcom/edroid/common/base64/Shared;->pad:C

    if-ne v4, v5, :cond_a

    goto :goto_2

    :cond_a
    const/4 v6, 0x2

    goto :goto_2

    :cond_b
    const/4 v6, 0x3

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v4, v0, :cond_d

    .line 141
    aget-char v7, v1, v4

    sget-char v9, Lcom/edroid/common/base64/Shared;->pad:C

    if-eq v7, v9, :cond_c

    .line 142
    sget-object v7, Lcom/edroid/common/base64/Shared;->chars:Ljava/lang/String;

    aget-char v9, v1, v4

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    rsub-int/lit8 v9, v4, 0x3

    mul-int/lit8 v9, v9, 0x6

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 145
    :cond_d
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/edroid/common/base64/Base64InputStream;->buffer:[I

    :goto_4
    if-ge v2, v6, :cond_e

    .line 147
    iget-object v0, p0, Lcom/edroid/common/base64/Base64InputStream;->buffer:[I

    rsub-int/lit8 v1, v2, 0x2

    mul-int/lit8 v1, v1, 0x8

    ushr-int v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/edroid/common/base64/Base64InputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/edroid/common/base64/Base64InputStream;->buffer:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/edroid/common/base64/Base64InputStream;->bufferCounter:I

    iget-object v1, p0, Lcom/edroid/common/base64/Base64InputStream;->buffer:[I

    array-length v1, v1

    if-ne v0, v1, :cond_3

    .line 75
    :cond_0
    iget-boolean v0, p0, Lcom/edroid/common/base64/Base64InputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/edroid/common/base64/Base64InputStream;->acquire()V

    .line 79
    iget-object v0, p0, Lcom/edroid/common/base64/Base64InputStream;->buffer:[I

    array-length v0, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/edroid/common/base64/Base64InputStream;->buffer:[I

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/edroid/common/base64/Base64InputStream;->bufferCounter:I

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/edroid/common/base64/Base64InputStream;->buffer:[I

    iget v1, p0, Lcom/edroid/common/base64/Base64InputStream;->bufferCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/edroid/common/base64/Base64InputStream;->bufferCounter:I

    aget v0, v0, v1

    return v0
.end method
