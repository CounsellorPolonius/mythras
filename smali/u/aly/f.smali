.class public Lu/aly/f;
.super Ljava/lang/Object;
.source "ImprintHandler.java"


# static fields
.field private static final a:Ljava/lang/String; = ".imprint"

.field private static final b:[B

.field private static e:Lu/aly/f;


# instance fields
.field private c:Lu/aly/w;

.field private d:Lu/aly/ba;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pbl0"

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lu/aly/f;->b:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lu/aly/f;->d:Lu/aly/ba;

    .line 37
    iput-object p1, p0, Lu/aly/f;->f:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    .line 177
    iget-object v0, p0, Lu/aly/f;->d:Lu/aly/ba;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {v0}, Lu/aly/ba;->f()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    invoke-virtual {v0}, Lu/aly/ba;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu/aly/bb;

    if-eqz p1, :cond_2

    .line 184
    invoke-virtual {p1}, Lu/aly/bb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lu/aly/bb;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method private a(Lu/aly/ba;Lu/aly/ba;)Lu/aly/ba;
    .locals 4

    if-nez p2, :cond_0

    return-object p1

    .line 136
    :cond_0
    invoke-virtual {p1}, Lu/aly/ba;->d()Ljava/util/Map;

    move-result-object v0

    .line 137
    invoke-virtual {p2}, Lu/aly/ba;->d()Ljava/util/Map;

    move-result-object v1

    .line 139
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 140
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/aly/bb;

    invoke-virtual {v3}, Lu/aly/bb;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p2}, Lu/aly/ba;->h()I

    move-result p2

    invoke-virtual {p1, p2}, Lu/aly/ba;->a(I)Lu/aly/ba;

    .line 148
    invoke-virtual {p0, p1}, Lu/aly/f;->a(Lu/aly/ba;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lu/aly/ba;->a(Ljava/lang/String;)Lu/aly/ba;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/f;
    .locals 2

    const-class v0, Lu/aly/f;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lu/aly/f;->e:Lu/aly/f;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lu/aly/f;

    invoke-direct {v1, p0}, Lu/aly/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lu/aly/f;->e:Lu/aly/f;

    .line 43
    sget-object p0, Lu/aly/f;->e:Lu/aly/f;

    invoke-virtual {p0}, Lu/aly/f;->b()V

    .line 46
    :cond_0
    sget-object p0, Lu/aly/f;->e:Lu/aly/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0

    throw p0
.end method

.method private c(Lu/aly/ba;)Z
    .locals 6

    .line 70
    invoke-virtual {p1}, Lu/aly/ba;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lu/aly/f;->a(Lu/aly/ba;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 74
    :cond_0
    invoke-virtual {p1}, Lu/aly/ba;->d()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bb;

    .line 75
    invoke-virtual {v0}, Lu/aly/bb;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 76
    invoke-virtual {p0, v0}, Lu/aly/f;->a(Lu/aly/bb;)[B

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 79
    aget-byte v4, v2, v3

    aget-byte v5, v0, v3

    if-eq v4, v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private e()V
    .locals 3

    .line 154
    iget-object v0, p0, Lu/aly/f;->c:Lu/aly/w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "defcon"

    .line 156
    invoke-direct {p0, v0}, Lu/aly/f;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 158
    iget-object v2, p0, Lu/aly/f;->c:Lu/aly/w;

    invoke-interface {v2, v0}, Lu/aly/w;->a(I)V

    .line 159
    iget-object v2, p0, Lu/aly/f;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/h;->a(I)V

    :cond_1
    const-string v0, "latent"

    .line 162
    invoke-direct {p0, v0}, Lu/aly/f;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    mul-int/lit16 v0, v0, 0x3e8

    .line 165
    iget-object v2, p0, Lu/aly/f;->c:Lu/aly/w;

    invoke-interface {v2, v0}, Lu/aly/w;->b(I)V

    .line 166
    iget-object v2, p0, Lu/aly/f;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/h;->b(I)V

    :cond_2
    const-string v0, "codex"

    .line 169
    invoke-direct {p0, v0}, Lu/aly/f;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_4

    .line 171
    :cond_3
    iget-object v1, p0, Lu/aly/f;->c:Lu/aly/w;

    invoke-interface {v1, v0}, Lu/aly/w;->c(I)V

    .line 172
    iget-object v1, p0, Lu/aly/f;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/h;->c(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lu/aly/ba;)Ljava/lang/String;
    .locals 5

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    new-instance v1, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lu/aly/ba;->d()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 57
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/aly/bb;

    invoke-virtual {v3}, Lu/aly/bb;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/aly/bb;

    invoke-virtual {v3}, Lu/aly/bb;->f()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/bb;

    invoke-virtual {v2}, Lu/aly/bb;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :cond_0
    iget p1, p1, Lu/aly/ba;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu/aly/cd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a()Lu/aly/ba;
    .locals 1

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lu/aly/f;->d:Lu/aly/ba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lu/aly/w;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lu/aly/f;->c:Lu/aly/w;

    return-void
.end method

.method public a(Lu/aly/bb;)[B
    .locals 6

    const/16 v0, 0x8

    .line 87
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {p1}, Lu/aly/bb;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 92
    sget-object v0, Lu/aly/f;->b:[B

    const/4 v1, 0x4

    .line 93
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 96
    aget-byte v4, p1, v3

    aget-byte v5, v0, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public b()V
    .locals 4

    .line 200
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lu/aly/f;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".imprint"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 209
    :try_start_0
    iget-object v1, p0, Lu/aly/f;->f:Landroid/content/Context;

    const-string v2, ".imprint"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    invoke-static {v1}, Lu/aly/cd;->b(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    invoke-static {v1}, Lu/aly/cd;->c(Ljava/io/InputStream;)V

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 212
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    invoke-static {v1}, Lu/aly/cd;->c(Ljava/io/InputStream;)V

    :goto_1
    if-eqz v0, :cond_1

    .line 219
    :try_start_3
    new-instance v1, Lu/aly/ba;

    invoke-direct {v1}, Lu/aly/ba;-><init>()V

    .line 220
    new-instance v2, Lu/aly/ck;

    invoke-direct {v2}, Lu/aly/ck;-><init>()V

    invoke-virtual {v2, v1, v0}, Lu/aly/ck;->a(Lu/aly/ch;[B)V

    .line 221
    iput-object v1, p0, Lu/aly/f;->d:Lu/aly/ba;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 214
    :goto_3
    invoke-static {v0}, Lu/aly/cd;->c(Ljava/io/InputStream;)V

    throw v1
.end method

.method public b(Lu/aly/ba;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lu/aly/f;->c(Lu/aly/ba;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 115
    :cond_1
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lu/aly/f;->d:Lu/aly/ba;

    if-nez v0, :cond_2

    goto :goto_0

    .line 122
    :cond_2
    invoke-direct {p0, v0, p1}, Lu/aly/f;->a(Lu/aly/ba;Lu/aly/ba;)Lu/aly/ba;

    move-result-object p1

    .line 125
    :goto_0
    iput-object p1, p0, Lu/aly/f;->d:Lu/aly/ba;

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object p1, p0, Lu/aly/f;->d:Lu/aly/ba;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lu/aly/f;->e()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 126
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 4

    .line 229
    iget-object v0, p0, Lu/aly/f;->d:Lu/aly/ba;

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    :try_start_0
    new-instance v0, Lu/aly/cq;

    invoke-direct {v0}, Lu/aly/cq;-><init>()V

    iget-object v1, p0, Lu/aly/f;->d:Lu/aly/ba;

    invoke-virtual {v0, v1}, Lu/aly/cq;->a(Lu/aly/ch;)[B

    move-result-object v0

    .line 235
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lu/aly/f;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".imprint"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lu/aly/cd;->a(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 3

    .line 242
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lu/aly/f;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".imprint"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method
