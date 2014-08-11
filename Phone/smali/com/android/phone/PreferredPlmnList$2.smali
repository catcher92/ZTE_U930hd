.class Lcom/android/phone/PreferredPlmnList$2;
.super Ljava/lang/Object;
.source "PreferredPlmnList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PreferredPlmnList;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferredPlmnList;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredPlmnList;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/phone/PreferredPlmnList$2;->this$0:Lcom/android/phone/PreferredPlmnList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/phone/PreferredPlmnList$2;->this$0:Lcom/android/phone/PreferredPlmnList;

    #calls: Lcom/android/phone/PreferredPlmnList;->loadPreferredPlmnList()V
    invoke-static {v0}, Lcom/android/phone/PreferredPlmnList;->access$400(Lcom/android/phone/PreferredPlmnList;)V

    .line 230
    return-void
.end method
