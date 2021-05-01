.class Lcom/mrpoid/app/EmulatorActivity$5;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/app/EmulatorActivity;->showMrpInputer(Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/app/EmulatorActivity;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$max:I

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/mrpoid/app/EmulatorActivity;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$5;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    iput-object p2, p0, Lcom/mrpoid/app/EmulatorActivity$5;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/mrpoid/app/EmulatorActivity$5;->val$content:Ljava/lang/String;

    iput p4, p0, Lcom/mrpoid/app/EmulatorActivity$5;->val$type:I

    iput p5, p0, Lcom/mrpoid/app/EmulatorActivity$5;->val$max:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 581
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity$5;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity$5;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/mrpoid/app/EmulatorActivity$5;->val$content:Ljava/lang/String;

    iget v3, p0, Lcom/mrpoid/app/EmulatorActivity$5;->val$type:I

    iget v4, p0, Lcom/mrpoid/app/EmulatorActivity$5;->val$max:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mrpoid/app/EmulatorActivity;->showMrpInputer_i(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
