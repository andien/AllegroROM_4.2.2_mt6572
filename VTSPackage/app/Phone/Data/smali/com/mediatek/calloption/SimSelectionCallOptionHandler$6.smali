.class Lcom/mediatek/calloption/SimSelectionCallOptionHandler$6;
.super Ljava/lang/Object;
.source "SimSelectionCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calloption/SimSelectionCallOptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$6;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$6;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    #getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onHandlingFinish()V

    .line 624
    return-void
.end method
