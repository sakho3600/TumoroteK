/**
 * Copyright ou © ou Copr. Ministère de la santé, FRANCE (01/01/2011)
 * dsi-projet.tk@aphp.fr
 *
 * Ce logiciel est un programme informatique servant à la gestion de
 * l'activité de biobanques.
 *
 * Ce logiciel est régi par la licence CeCILL soumise au droit français
 * et respectant les principes de diffusion des logiciels libres. Vous
 * pouvez utiliser, modifier et/ou redistribuer ce programme sous les
 * conditions de la licence CeCILL telle que diffusée par le CEA, le
 * CNRS et l'INRIA sur le site "http://www.cecill.info".
 * En contrepartie de l'accessibilité au code source et des droits de
 * copie, de modification et de redistribution accordés par cette
 * licence, il n'est offert aux utilisateurs qu'une garantie limitée.
 * Pour les mêmes raisons, seule une responsabilité restreinte pèse sur
 * l'auteur du programme, le titulaire des droits patrimoniaux et les
 * concédants successifs.
 *
 * A cet égard  l'attention de l'utilisateur est attirée sur les
 * risques associés au chargement,  à l'utilisation,  à la modification
 * et/ou au  développement et à la reproduction du logiciel par
 * l'utilisateur étant donné sa spécificité de logiciel libre, qui peut
 * le rendre complexe à manipuler et qui le réserve donc à des
 * développeurs et des professionnels  avertis possédant  des
 * connaissances  informatiques approfondies.  Les utilisateurs sont
 * donc invités à charger  et  tester  l'adéquation  du logiciel à leurs
 * besoins dans des conditions permettant d'assurer la sécurité de leurs
 * systèmes et ou de leurs données et, plus généralement, à l'utiliser
 * et l'exploiter dans les mêmes conditions de sécurité.
 *
 * Le fait que vous puissiez accéder à cet en-tête signifie que vous
 * avez pris connaissance de la licence CeCILL, et que vous en avez
 * accepté les termes.
 **/
package fr.aphp.tumorotek.manager.exception;

public class InvalidParentException extends TKException
{

   private static final long serialVersionUID = 6642387077579941896L;

   private String entite;
   private String operation;
   private Boolean allParentsAreNull;

   public InvalidParentException(){
      super();
   }

   public InvalidParentException(final String ent, final String op, final boolean allParentsNull){
      this.entite = ent;
      this.operation = op;
      this.allParentsAreNull = allParentsNull;
   }

   public String getEntite(){
      return entite;
   }

   public void setEntite(final String e){
      this.entite = e;
   }

   public String getOperation(){
      return operation;
   }

   public void setOperation(final String o){
      this.operation = o;
   }

   public Boolean getAllParentsAreNull(){
      return allParentsAreNull;
   }

   public void setAllParentsAreNull(final Boolean allParents){
      this.allParentsAreNull = allParents;
   }

   @Override
   public String getMessage(){

      if(allParentsAreNull){
         return this.entite + ": tous les parents " + " de cette entité sont nulls lors de " + "l'opération de " + this.operation
            + "";
      }else{
         return this.entite + ": plusieurs parents " + " de cette entité sont définis lors de " + "l'opération de "
            + this.operation + "";
      }
   }

}
