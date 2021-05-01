.class public Lu/aly/j;
.super Lu/aly/a;
.source "UTDIdTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "utdid"

.field private static final b:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTDID\">([^<]+)"

    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lu/aly/j;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "utdid"

    .line 22
    invoke-direct {p0, v0}, Lu/aly/a;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lu/aly/j;->d:Landroid/content/Context;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 55
    :cond_0
    sget-object v1, Lu/aly/j;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .line 32
    invoke-direct {p0}, Lu/aly/j;->h()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    invoke-static {v2}, Lu/aly/cd;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    invoke-static {v2}, Lu/aly/cd;->c(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lu/aly/cd;->c(Ljava/io/InputStream;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method private h()Ljava/io/File;
    .locals 4

    .line 65
    iget-object v0, p0, Lu/aly/j;->d:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lu/aly/bq;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 69
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 72
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".UTSystemConfig/Global/Alvin2.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_1
    return-object v1
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-direct {p0}, Lu/aly/j;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
