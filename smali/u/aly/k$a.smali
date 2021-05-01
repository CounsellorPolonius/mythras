.class public Lu/aly/k$a;
.super Ljava/lang/Object;
.source "CacheImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lu/aly/k;

.field private final b:J

.field private final c:I

.field private final d:I

.field private e:Lcom/umeng/analytics/ReportPolicy$g;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lu/aly/k;)V
    .locals 3

    .line 380
    iput-object p1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x4d3f6400

    .line 367
    iput-wide v0, p0, Lu/aly/k$a;->b:J

    const v0, 0x1b7740

    .line 368
    iput v0, p0, Lu/aly/k$a;->c:I

    const/16 v0, 0x2710

    .line 369
    iput v0, p0, Lu/aly/k$a;->d:I

    const/4 v1, 0x0

    .line 377
    iput-boolean v1, p0, Lu/aly/k$a;->j:Z

    .line 381
    invoke-static {p1}, Lu/aly/k;->a(Lu/aly/k;)Lcom/umeng/analytics/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/h;->d()I

    move-result v2

    iput v2, p0, Lu/aly/k$a;->f:I

    .line 383
    invoke-static {p1}, Lu/aly/k;->a(Lu/aly/k;)Lcom/umeng/analytics/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/h;->e()I

    move-result v2

    if-lez v2, :cond_0

    .line 385
    invoke-direct {p0, v2}, Lu/aly/k$a;->c(I)I

    move-result v0

    iput v0, p0, Lu/aly/k$a;->g:I

    goto :goto_0

    .line 386
    :cond_0
    sget v2, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    if-lez v2, :cond_1

    .line 387
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    invoke-direct {p0, v0}, Lu/aly/k$a;->c(I)I

    move-result v0

    iput v0, p0, Lu/aly/k$a;->g:I

    goto :goto_0

    .line 389
    :cond_1
    iput v0, p0, Lu/aly/k$a;->g:I

    .line 392
    :goto_0
    invoke-static {p1}, Lu/aly/k;->a(Lu/aly/k;)Lcom/umeng/analytics/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/h;->c()[I

    move-result-object p1

    .line 393
    aget v0, p1, v1

    iput v0, p0, Lu/aly/k$a;->h:I

    const/4 v0, 0x1

    .line 394
    aget p1, p1, v0

    iput p1, p0, Lu/aly/k$a;->i:I

    return-void
.end method

.method private b(II)Lcom/umeng/analytics/ReportPolicy$g;
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 473
    :pswitch_0
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$c;

    invoke-direct {p1}, Lcom/umeng/analytics/ReportPolicy$c;-><init>()V

    goto :goto_0

    .line 461
    :pswitch_1
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$d;

    iget-object v0, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v0}, Lu/aly/k;->b(Lu/aly/k;)Lu/aly/aa;

    move-result-object v0

    int-to-long v1, p2

    invoke-direct {p1, v0, v1, v2}, Lcom/umeng/analytics/ReportPolicy$d;-><init>(Lu/aly/aa;J)V

    goto :goto_0

    .line 470
    :pswitch_2
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$h;

    iget-object p2, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {p2}, Lu/aly/k;->d(Lu/aly/k;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/ReportPolicy$h;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 464
    :pswitch_3
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$f;

    iget-object p2, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {p2}, Lu/aly/k;->b(Lu/aly/k;)Lu/aly/aa;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/ReportPolicy$f;-><init>(Lu/aly/aa;)V

    goto :goto_0

    .line 458
    :pswitch_4
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$c;

    invoke-direct {p1}, Lcom/umeng/analytics/ReportPolicy$c;-><init>()V

    goto :goto_0

    .line 467
    :pswitch_5
    new-instance p1, Lcom/umeng/analytics/ReportPolicy$g;

    invoke-direct {p1}, Lcom/umeng/analytics/ReportPolicy$g;-><init>()V

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private c(I)I
    .locals 1

    const v0, 0x1b7740

    if-le p1, v0, :cond_0

    const p1, 0x1b7740

    :cond_0
    return p1
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 401
    iget v0, p0, Lu/aly/k$a;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 403
    iget-object v0, p0, Lu/aly/k$a;->e:Lcom/umeng/analytics/ReportPolicy$g;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/k$a;->e:Lcom/umeng/analytics/ReportPolicy$g;

    invoke-virtual {v0}, Lcom/umeng/analytics/ReportPolicy$g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 404
    iget-object v0, p0, Lu/aly/k$a;->e:Lcom/umeng/analytics/ReportPolicy$g;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$a;

    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v1}, Lu/aly/k;->b(Lu/aly/k;)Lu/aly/aa;

    move-result-object v1

    iget-object v3, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v3}, Lu/aly/k;->c(Lu/aly/k;)Lu/aly/ak;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/umeng/analytics/ReportPolicy$a;-><init>(Lu/aly/aa;Lu/aly/ak;)V

    :goto_1
    iput-object v0, p0, Lu/aly/k$a;->e:Lcom/umeng/analytics/ReportPolicy$g;

    goto :goto_3

    .line 406
    :cond_2
    iget-object v0, p0, Lu/aly/k$a;->e:Lcom/umeng/analytics/ReportPolicy$g;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lu/aly/k$a;->e:Lcom/umeng/analytics/ReportPolicy$g;

    invoke-virtual {v0}, Lcom/umeng/analytics/ReportPolicy$g;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_5

    .line 408
    invoke-virtual {p0}, Lu/aly/k$a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 409
    iget-object v0, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v0}, Lu/aly/k;->d(Lu/aly/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/aly/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 410
    iget v1, p0, Lu/aly/k$a;->g:I

    invoke-static {v1, v0}, Lcom/umeng/analytics/b;->a(ILjava/lang/String;)I

    move-result v0

    .line 411
    new-instance v1, Lcom/umeng/analytics/ReportPolicy$b;

    invoke-direct {v1, v0}, Lcom/umeng/analytics/ReportPolicy$b;-><init>(I)V

    iput-object v1, p0, Lu/aly/k$a;->e:Lcom/umeng/analytics/ReportPolicy$g;

    .line 412
    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v1, v0}, Lu/aly/k;->a(Lu/aly/k;I)V

    goto :goto_3

    .line 415
    :cond_4
    iget v0, p0, Lu/aly/k$a;->h:I

    iget v1, p0, Lu/aly/k$a;->i:I

    invoke-direct {p0, v0, v1}, Lu/aly/k$a;->b(II)Lcom/umeng/analytics/ReportPolicy$g;

    move-result-object v0

    iput-object v0, p0, Lu/aly/k$a;->e:Lcom/umeng/analytics/ReportPolicy$g;

    .line 420
    :cond_5
    :goto_3
    iput-boolean v2, p0, Lu/aly/k$a;->j:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 494
    invoke-direct {p0, p1}, Lu/aly/k$a;->c(I)I

    move-result p1

    iput p1, p0, Lu/aly/k$a;->g:I

    .line 495
    invoke-virtual {p0}, Lu/aly/k$a;->d()V

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 504
    iput p1, p0, Lu/aly/k$a;->h:I

    .line 505
    iput p2, p0, Lu/aly/k$a;->i:I

    .line 506
    invoke-virtual {p0}, Lu/aly/k$a;->d()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 499
    iput p1, p0, Lu/aly/k$a;->f:I

    .line 500
    invoke-virtual {p0}, Lu/aly/k$a;->d()V

    return-void
.end method

.method protected b()Z
    .locals 8

    .line 424
    iget-object v0, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v0}, Lu/aly/k;->a(Lu/aly/k;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 428
    :cond_0
    iget-object v0, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v0}, Lu/aly/k;->b(Lu/aly/k;)Lu/aly/aa;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/aa;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 432
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v0}, Lu/aly/k;->b(Lu/aly/k;)Lu/aly/aa;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/aa;->o()J

    move-result-wide v4

    sub-long v6, v2, v4

    const-wide/32 v2, 0x4d3f6400

    cmp-long v0, v6, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public c()Lcom/umeng/analytics/ReportPolicy$g;
    .locals 1

    .line 444
    invoke-virtual {p0}, Lu/aly/k$a;->a()V

    .line 445
    iget-object v0, p0, Lu/aly/k$a;->e:Lcom/umeng/analytics/ReportPolicy$g;

    return-object v0
.end method

.method protected d()V
    .locals 1

    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lu/aly/k$a;->j:Z

    return-void
.end method
