.class public Lu/aly/cg;
.super Lu/aly/cn;
.source "TApplicationException.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field private static final j:Lu/aly/dl;

.field private static final k:Lu/aly/db;

.field private static final l:Lu/aly/db;

.field private static final m:J = 0x1L


# instance fields
.field protected i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lu/aly/dl;

    const-string v1, "TApplicationException"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/cg;->j:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "message"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cg;->k:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "type"

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cg;->l:Lu/aly/db;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lu/aly/cn;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lu/aly/cg;->i:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lu/aly/cn;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lu/aly/cg;->i:I

    .line 57
    iput p1, p0, Lu/aly/cg;->i:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p2}, Lu/aly/cn;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 49
    iput p2, p0, Lu/aly/cg;->i:I

    .line 62
    iput p1, p0, Lu/aly/cg;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lu/aly/cn;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lu/aly/cg;->i:I

    return-void
.end method

.method public static a(Lu/aly/dg;)Lu/aly/cg;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lu/aly/dg;->j()Lu/aly/dl;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    :goto_0
    invoke-virtual {p0}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v2

    .line 82
    iget-byte v3, v2, Lu/aly/db;->b:B

    if-nez v3, :cond_0

    .line 106
    invoke-virtual {p0}, Lu/aly/dg;->k()V

    .line 108
    new-instance p0, Lu/aly/cg;

    invoke-direct {p0, v1, v0}, Lu/aly/cg;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 85
    :cond_0
    iget-short v3, v2, Lu/aly/db;->c:S

    packed-switch v3, :pswitch_data_0

    .line 101
    iget-byte v2, v2, Lu/aly/db;->b:B

    invoke-static {p0, v2}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 94
    :pswitch_0
    iget-byte v3, v2, Lu/aly/db;->b:B

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 95
    invoke-virtual {p0}, Lu/aly/dg;->w()I

    move-result v1

    goto :goto_1

    .line 97
    :cond_1
    iget-byte v2, v2, Lu/aly/db;->b:B

    invoke-static {p0, v2}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 87
    :pswitch_1
    iget-byte v3, v2, Lu/aly/db;->b:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    .line 88
    invoke-virtual {p0}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_2
    iget-byte v2, v2, Lu/aly/db;->b:B

    invoke-static {p0, v2}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 104
    :goto_1
    invoke-virtual {p0}, Lu/aly/dg;->m()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 70
    iget v0, p0, Lu/aly/cg;->i:I

    return v0
.end method

.method public b(Lu/aly/dg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 112
    sget-object v0, Lu/aly/cg;->j:Lu/aly/dl;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 113
    invoke-virtual {p0}, Lu/aly/cg;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lu/aly/cg;->k:Lu/aly/db;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 115
    invoke-virtual {p0}, Lu/aly/cg;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 118
    :cond_0
    sget-object v0, Lu/aly/cg;->l:Lu/aly/db;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 119
    iget v0, p0, Lu/aly/cg;->i:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 120
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 121
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 122
    invoke-virtual {p1}, Lu/aly/dg;->b()V

    return-void
.end method
