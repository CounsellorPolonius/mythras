.class public Lcom/umeng/analytics/ReportPolicy$e;
.super Lcom/umeng/analytics/ReportPolicy$g;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field private b:Lu/aly/s;


# direct methods
.method public constructor <init>(Lu/aly/s;I)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$g;-><init>()V

    .line 177
    iput p2, p0, Lcom/umeng/analytics/ReportPolicy$e;->a:I

    .line 178
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$e;->b:Lu/aly/s;

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    .line 182
    iget-object p1, p0, Lcom/umeng/analytics/ReportPolicy$e;->b:Lu/aly/s;

    invoke-virtual {p1}, Lu/aly/s;->b()I

    move-result p1

    iget v0, p0, Lcom/umeng/analytics/ReportPolicy$e;->a:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
