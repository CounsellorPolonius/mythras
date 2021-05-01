.class public Lu/aly/ak;
.super Ljava/lang/Object;
.source "Defcon.java"


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:J = 0xdbba00L

.field private static final f:J = 0x1b77400L

.field private static final g:J = 0x5265c00L


# instance fields
.field private h:I

.field private final i:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lu/aly/ak;->h:I

    const-wide/32 v0, 0xea60

    .line 29
    iput-wide v0, p0, Lu/aly/ak;->i:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 59
    iget v0, p0, Lu/aly/ak;->h:I

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_0
    const-wide/32 v0, 0x5265c00

    return-wide v0

    :pswitch_1
    const-wide/32 v0, 0x1b77400

    return-wide v0

    :pswitch_2
    const-wide/32 v0, 0xdbba00

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;)Lu/aly/bl;
    .locals 7

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    new-instance v2, Lu/aly/bl;

    invoke-direct {v2}, Lu/aly/bl;-><init>()V

    .line 50
    invoke-static {p1}, Lu/aly/z;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lu/aly/bl;->a(Ljava/lang/String;)Lu/aly/bl;

    .line 51
    invoke-virtual {v2, v0, v1}, Lu/aly/bl;->a(J)Lu/aly/bl;

    const-wide/32 v3, 0xea60

    add-long v5, v0, v3

    .line 52
    invoke-virtual {v2, v5, v6}, Lu/aly/bl;->b(J)Lu/aly/bl;

    .line 53
    invoke-virtual {v2, v3, v4}, Lu/aly/bl;->c(J)Lu/aly/bl;

    return-object v2
.end method

.method public a(Landroid/content/Context;Lu/aly/bn;)Lu/aly/bn;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 34
    :cond_0
    iget v1, p0, Lu/aly/ak;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 35
    invoke-virtual {p2, v0}, Lu/aly/bn;->a(Ljava/util/List;)Lu/aly/bn;

    goto :goto_0

    .line 36
    :cond_1
    iget v1, p0, Lu/aly/ak;->h:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 37
    new-array v1, v2, [Lu/aly/bl;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lu/aly/ak;->a(Landroid/content/Context;)Lu/aly/bl;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lu/aly/bn;->b(Ljava/util/List;)Lu/aly/bn;

    .line 38
    invoke-virtual {p2, v0}, Lu/aly/bn;->a(Ljava/util/List;)Lu/aly/bn;

    goto :goto_0

    .line 39
    :cond_2
    iget p1, p0, Lu/aly/ak;->h:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 40
    invoke-virtual {p2, v0}, Lu/aly/bn;->b(Ljava/util/List;)Lu/aly/bn;

    .line 41
    invoke-virtual {p2, v0}, Lu/aly/bn;->a(Ljava/util/List;)Lu/aly/bn;

    :cond_3
    :goto_0
    return-object p2
.end method

.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 78
    iput p1, p0, Lu/aly/ak;->h:I

    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    .line 73
    iget v0, p0, Lu/aly/ak;->h:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x493e0

    :goto_0
    return-wide v0
.end method

.method public c()Z
    .locals 1

    .line 83
    iget v0, p0, Lu/aly/ak;->h:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
