.class Lcom/mrpoid/view/PathChooseDialog$3;
.super Ljava/lang/Object;
.source "PathChooseDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/view/PathChooseDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/view/PathChooseDialog;


# direct methods
.method constructor <init>(Lcom/mrpoid/view/PathChooseDialog;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$3;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 181
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$3;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p1}, Lcom/mrpoid/view/PathChooseDialog;->access$600(Lcom/mrpoid/view/PathChooseDialog;)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$3;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p1}, Lcom/mrpoid/view/PathChooseDialog;->access$600(Lcom/mrpoid/view/PathChooseDialog;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$3;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p1}, Lcom/mrpoid/view/PathChooseDialog;->access$600(Lcom/mrpoid/view/PathChooseDialog;)Landroid/view/View;

    move-result-object p1

    sget p4, Lcom/mrpoid/R$id;->ll_op:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    sget p1, Lcom/mrpoid/R$id;->ll_op:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 185
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p4

    if-ne p4, p3, :cond_1

    const/4 p3, 0x0

    .line 186
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$3;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p1, p2}, Lcom/mrpoid/view/PathChooseDialog;->access$602(Lcom/mrpoid/view/PathChooseDialog;Landroid/view/View;)Landroid/view/View;

    const/4 p1, 0x1

    return p1
.end method
