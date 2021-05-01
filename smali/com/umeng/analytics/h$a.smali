.class public Lcom/umeng/analytics/h$a;
.super Ljava/lang/Object;
.source "StoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/io/File;

.field private c:Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, ".um"

    .line 254
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/h$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 250
    iput v0, p0, Lcom/umeng/analytics/h$a;->a:I

    .line 332
    new-instance v0, Lcom/umeng/analytics/h$a$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/h$a$1;-><init>(Lcom/umeng/analytics/h$a;)V

    iput-object v0, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    .line 258
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    .line 259
    iget-object p1, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/h$b;)V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 276
    array-length v1, v0

    if-lez v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-interface {p1, v1}, Lcom/umeng/analytics/h$b;->a(Ljava/io/File;)V

    .line 279
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 284
    :try_start_0
    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Lcom/umeng/analytics/h$b;->b(Ljava/io/File;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 288
    aget-object v3, v0, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    aget-object v3, v0, v2

    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/umeng/analytics/h$b;->c(Ljava/io/File;)V

    :cond_2
    return-void
.end method

.method public a([B)V
    .locals 5

    if-eqz p1, :cond_2

    .line 296
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 298
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "um_cache_%d.env"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    :try_start_0
    invoke-static {v1, p1}, Lu/aly/cd;->a(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :catch_0
    iget-object p1, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v0, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 306
    array-length v0, p1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 307
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 308
    array-length v0, p1

    sub-int/2addr v0, v1

    :goto_0
    if-ge v4, v0, :cond_1

    .line 310
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    array-length v1, v0

    if-lez v1, :cond_0

    .line 318
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 319
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()I
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    array-length v1, v0

    if-lez v1, :cond_0

    .line 327
    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
