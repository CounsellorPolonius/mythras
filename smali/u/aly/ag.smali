.class public Lu/aly/ag;
.super Lu/aly/at;
.source "UError.java"

# interfaces
.implements Lu/aly/q;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lu/aly/at;-><init>()V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lu/aly/ag;->a(J)Lu/aly/at;

    .line 22
    sget-object v0, Lu/aly/au;->a:Lu/aly/au;

    invoke-virtual {p0, v0}, Lu/aly/ag;->a(Lu/aly/au;)Lu/aly/at;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lu/aly/ag;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lu/aly/ag;->a(Ljava/lang/String;)Lu/aly/at;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lu/aly/ag;-><init>()V

    .line 32
    invoke-direct {p0, p1}, Lu/aly/ag;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/aly/ag;->a(Ljava/lang/String;)Lu/aly/at;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 48
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 49
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    :try_start_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 58
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_1

    :catch_1
    move-exception p1

    .line 60
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_2
    return-object p1
.end method


# virtual methods
.method public a(Z)Lu/aly/ag;
    .locals 0

    if-eqz p1, :cond_0

    .line 36
    sget-object p1, Lu/aly/au;->a:Lu/aly/au;

    goto :goto_0

    :cond_0
    sget-object p1, Lu/aly/au;->b:Lu/aly/au;

    :goto_0
    invoke-virtual {p0, p1}, Lu/aly/ag;->a(Lu/aly/au;)Lu/aly/at;

    return-object p0
.end method

.method public a(Lu/aly/bn;Ljava/lang/String;)V
    .locals 3

    .line 68
    invoke-virtual {p1}, Lu/aly/bn;->s()I

    move-result v0

    if-lez v0, :cond_1

    .line 69
    invoke-virtual {p1}, Lu/aly/bn;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bc;

    .line 70
    invoke-virtual {v1}, Lu/aly/bc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 78
    new-instance v1, Lu/aly/bc;

    invoke-direct {v1}, Lu/aly/bc;-><init>()V

    .line 79
    invoke-virtual {v1, p2}, Lu/aly/bc;->a(Ljava/lang/String;)Lu/aly/bc;

    .line 80
    invoke-virtual {p1, v1}, Lu/aly/bn;->a(Lu/aly/bc;)V

    .line 83
    :cond_2
    invoke-virtual {v1, p0}, Lu/aly/bc;->a(Lu/aly/at;)V

    return-void
.end method
