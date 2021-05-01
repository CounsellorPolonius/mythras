.class public Lcom/umeng/analytics/ReportPolicy$b;
.super Lcom/umeng/analytics/ReportPolicy$g;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 154
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$g;-><init>()V

    const-wide/16 v0, 0x0

    .line 152
    iput-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$b;->b:J

    int-to-long v0, p1

    .line 155
    iput-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:J

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$b;->b:J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/analytics/ReportPolicy$b;->b:J

    sub-long v4, v0, v2

    iget-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:J

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Z)Z
    .locals 6

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/analytics/ReportPolicy$b;->b:J

    sub-long v4, v0, v2

    iget-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:J

    cmp-long p1, v4, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
