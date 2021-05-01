.class public Lcom/umeng/analytics/ReportPolicy$a;
.super Lcom/umeng/analytics/ReportPolicy$g;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lu/aly/ak;

.field private b:Lu/aly/aa;


# direct methods
.method public constructor <init>(Lu/aly/aa;Lu/aly/ak;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$g;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$a;->b:Lu/aly/aa;

    .line 130
    iput-object p2, p0, Lcom/umeng/analytics/ReportPolicy$a;->a:Lu/aly/ak;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$a;->a:Lu/aly/ak;

    invoke-virtual {v0}, Lu/aly/ak;->c()Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 8

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 135
    iget-object p1, p0, Lcom/umeng/analytics/ReportPolicy$a;->a:Lu/aly/ak;

    invoke-virtual {p1}, Lu/aly/ak;->a()J

    move-result-wide v2

    .line 137
    iget-object p1, p0, Lcom/umeng/analytics/ReportPolicy$a;->b:Lu/aly/aa;

    iget-wide v4, p1, Lu/aly/aa;->c:J

    sub-long v6, v0, v4

    cmp-long p1, v6, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
