.class public Lu/aly/c;
.super Ljava/lang/Object;
.source "Envelope.java"


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:[B

.field private h:[B

.field private i:I

.field private j:I

.field private k:I

.field private l:[B

.field private m:[B

.field private n:Z


# direct methods
.method private constructor <init>([BLjava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 21
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lu/aly/c;->a:[B

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lu/aly/c;->b:I

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lu/aly/c;->c:I

    const-string v1, "1.0"

    .line 25
    iput-object v1, p0, Lu/aly/c;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lu/aly/c;->e:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lu/aly/c;->f:[B

    .line 29
    iput-object v1, p0, Lu/aly/c;->g:[B

    .line 30
    iput-object v1, p0, Lu/aly/c;->h:[B

    .line 32
    iput v0, p0, Lu/aly/c;->i:I

    .line 33
    iput v0, p0, Lu/aly/c;->j:I

    .line 34
    iput v0, p0, Lu/aly/c;->k:I

    .line 36
    iput-object v1, p0, Lu/aly/c;->l:[B

    .line 37
    iput-object v1, p0, Lu/aly/c;->m:[B

    .line 39
    iput-boolean v0, p0, Lu/aly/c;->n:Z

    if-eqz p1, :cond_1

    .line 43
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iput-object p2, p0, Lu/aly/c;->e:Ljava/lang/String;

    .line 48
    array-length p2, p1

    iput p2, p0, Lu/aly/c;->k:I

    .line 49
    invoke-static {p1}, Lu/aly/cc;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lu/aly/c;->l:[B

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lu/aly/c;->j:I

    .line 52
    iput-object p3, p0, Lu/aly/c;->m:[B

    return-void

    .line 44
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "entity is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 56
    invoke-static {p0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "signature"

    .line 60
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/c;
    .locals 8

    const/4 v0, 0x0

    .line 81
    :try_start_0
    invoke-static {p0}, Lu/aly/bq;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {p0}, Lu/aly/bq;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {p0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v3, "signature"

    .line 86
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "serial"

    const/4 v5, 0x1

    .line 87
    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 89
    new-instance v6, Lu/aly/c;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v6, p2, p1, v1}, Lu/aly/c;-><init>([BLjava/lang/String;[B)V

    .line 91
    invoke-virtual {v6, v3}, Lu/aly/c;->a(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v6, v4}, Lu/aly/c;->a(I)V

    .line 93
    invoke-virtual {v6}, Lu/aly/c;->b()V

    .line 95
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "serial"

    add-int/2addr v4, v5

    invoke-interface {p0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "signature"

    invoke-virtual {v6}, Lu/aly/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private a([BI)[B
    .locals 9

    .line 151
    iget-object v0, p0, Lu/aly/c;->m:[B

    invoke-static {v0}, Lcom/umeng/analytics/b;->b([B)[B

    move-result-object v0

    .line 152
    iget-object v1, p0, Lu/aly/c;->l:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->b([B)[B

    move-result-object v1

    .line 154
    array-length v2, v0

    mul-int/lit8 v3, v2, 0x2

    .line 155
    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v2, :cond_0

    mul-int/lit8 v7, v5, 0x2

    .line 159
    aget-byte v8, v1, v5

    aput-byte v8, v3, v7

    add-int/2addr v7, v6

    .line 160
    aget-byte v6, v0, v5

    aput-byte v6, v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 166
    aget-byte v1, p1, v0

    aput-byte v1, v3, v0

    .line 167
    array-length v1, v3

    sub-int/2addr v1, v0

    sub-int/2addr v1, v6

    array-length v2, p1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v6

    aget-byte v2, p1, v2

    aput-byte v2, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    .line 171
    new-array p1, p1, [B

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v4

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v6

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    const/4 v0, 0x3

    ushr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    .line 178
    :goto_2
    array-length p2, v3

    if-ge v4, p2, :cond_2

    .line 179
    aget-byte p2, v3, v4

    rem-int/lit8 v0, v4, 0x4

    aget-byte v0, p1, v0

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-object v3
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/c;
    .locals 8

    const/4 v0, 0x0

    .line 106
    :try_start_0
    invoke-static {p0}, Lu/aly/bq;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {p0}, Lu/aly/bq;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {p0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v3, "signature"

    .line 111
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "serial"

    const/4 v5, 0x1

    .line 112
    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 114
    new-instance v6, Lu/aly/c;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v6, p2, p1, v1}, Lu/aly/c;-><init>([BLjava/lang/String;[B)V

    .line 116
    invoke-virtual {v6, v5}, Lu/aly/c;->a(Z)V

    .line 117
    invoke-virtual {v6, v3}, Lu/aly/c;->a(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v6, v4}, Lu/aly/c;->a(I)V

    .line 119
    invoke-virtual {v6}, Lu/aly/c;->b()V

    .line 121
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "serial"

    add-int/2addr v4, v5

    invoke-interface {p0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "signature"

    invoke-virtual {v6}, Lu/aly/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private d()[B
    .locals 5

    .line 186
    iget-object v0, p0, Lu/aly/c;->a:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lu/aly/c;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private e()[B
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    iget-object v1, p0, Lu/aly/c;->f:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget v1, p0, Lu/aly/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    iget v1, p0, Lu/aly/c;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    iget v1, p0, Lu/aly/c;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    iget-object v1, p0, Lu/aly/c;->g:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/b;->b([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lu/aly/c;->f:[B

    invoke-static {v0}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 72
    iput p1, p0, Lu/aly/c;->i:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-static {p1}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lu/aly/c;->f:[B

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lu/aly/c;->n:Z

    return-void
.end method

.method public b()V
    .locals 5

    .line 134
    iget-object v0, p0, Lu/aly/c;->f:[B

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lu/aly/c;->d()[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/c;->f:[B

    .line 138
    :cond_0
    iget-boolean v0, p0, Lu/aly/c;->n:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    .line 139
    new-array v1, v0, [B

    .line 141
    :try_start_0
    iget-object v2, p0, Lu/aly/c;->f:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget-object v0, p0, Lu/aly/c;->l:[B

    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/c;->l:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :catch_0
    :cond_1
    iget-object v0, p0, Lu/aly/c;->f:[B

    iget v1, p0, Lu/aly/c;->j:I

    invoke-direct {p0, v0, v1}, Lu/aly/c;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/c;->g:[B

    .line 147
    invoke-direct {p0}, Lu/aly/c;->e()[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/c;->h:[B

    return-void
.end method

.method public c()[B
    .locals 2

    .line 202
    new-instance v0, Lu/aly/bp;

    invoke-direct {v0}, Lu/aly/bp;-><init>()V

    .line 204
    iget-object v1, p0, Lu/aly/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/bp;->a(Ljava/lang/String;)Lu/aly/bp;

    .line 205
    iget-object v1, p0, Lu/aly/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/bp;->b(Ljava/lang/String;)Lu/aly/bp;

    .line 206
    iget-object v1, p0, Lu/aly/c;->f:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/bp;->c(Ljava/lang/String;)Lu/aly/bp;

    .line 207
    iget v1, p0, Lu/aly/c;->i:I

    invoke-virtual {v0, v1}, Lu/aly/bp;->a(I)Lu/aly/bp;

    .line 208
    iget v1, p0, Lu/aly/c;->j:I

    invoke-virtual {v0, v1}, Lu/aly/bp;->c(I)Lu/aly/bp;

    .line 209
    iget v1, p0, Lu/aly/c;->k:I

    invoke-virtual {v0, v1}, Lu/aly/bp;->d(I)Lu/aly/bp;

    .line 211
    iget-object v1, p0, Lu/aly/c;->l:[B

    invoke-virtual {v0, v1}, Lu/aly/bp;->a([B)Lu/aly/bp;

    .line 212
    iget-boolean v1, p0, Lu/aly/c;->n:Z

    invoke-virtual {v0, v1}, Lu/aly/bp;->e(I)Lu/aly/bp;

    .line 214
    iget-object v1, p0, Lu/aly/c;->g:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/bp;->d(Ljava/lang/String;)Lu/aly/bp;

    .line 215
    iget-object v1, p0, Lu/aly/c;->h:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/bp;->e(Ljava/lang/String;)Lu/aly/bp;

    .line 218
    :try_start_0
    new-instance v1, Lu/aly/cq;

    invoke-direct {v1}, Lu/aly/cq;-><init>()V

    invoke-virtual {v1, v0}, Lu/aly/cq;->a(Lu/aly/ch;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version : %s\n"

    const/4 v2, 0x1

    .line 229
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lu/aly/c;->d:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "address : %s\n"

    .line 230
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lu/aly/c;->e:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "signature : %s\n"

    .line 231
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lu/aly/c;->f:[B

    invoke-static {v4}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serial : %s\n"

    .line 232
    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lu/aly/c;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp : %d\n"

    .line 233
    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lu/aly/c;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "length : %d\n"

    .line 234
    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lu/aly/c;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "guid : %s\n"

    .line 235
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lu/aly/c;->g:[B

    invoke-static {v4}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum : %s "

    .line 236
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lu/aly/c;->h:[B

    invoke-static {v4}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "codex : %d"

    .line 237
    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lu/aly/c;->n:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
