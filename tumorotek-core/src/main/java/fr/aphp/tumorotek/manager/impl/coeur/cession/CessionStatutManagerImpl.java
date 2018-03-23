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
package fr.aphp.tumorotek.manager.impl.coeur.cession;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import fr.aphp.tumorotek.dao.cession.CessionStatutDao;
import fr.aphp.tumorotek.manager.coeur.cession.CessionStatutManager;
import fr.aphp.tumorotek.model.cession.CessionStatut;

/**
 *
 * Implémentation du manager du bean de domaine CessionStatut.
 * Interface créée le 26/01/10.
 *
 * @author Pierre Ventadour
 * @version 2.0
 *
 */
public class CessionStatutManagerImpl implements CessionStatutManager
{

   private final Log log = LogFactory.getLog(CessionStatutManager.class);

   /** Bean Dao CessionStatutDao. */
   private CessionStatutDao cessionStatutDao;

   /**
    * Setter du bean CessionStatutDao.
    * @param cDao est le bean Dao.
    */
   public void setCessionStatutDao(final CessionStatutDao cDao){
      this.cessionStatutDao = cDao;
   }

   /**
    * Recherche un CessionStatut dont l'identifiant est passé en paramètre.
    * @param cessionStatutId Identifiant du CessionStatut que l'on recherche.
    * @return Un CessionStatut.
    */
   @Override
   public CessionStatut findByIdManager(final Integer cessionStatutId){
      return cessionStatutDao.findById(cessionStatutId);
   }

   /**
    * Recherche tous les CessionStatut présents dans la base.
    * @return Liste de CessionStatuts.
    */
   @Override
   public List<CessionStatut> findAllObjectsManager(){
      return cessionStatutDao.findByOrder();
   }

   /**
    * Recherche tous les CessionStatut dont le statut commence
    * comme celui passé en paramètre.
    * @param statut Statut du CessionStatut que l'on recherche.
    * @param exactMatch True si l'on souhaite seulement récuéprer les matchs
    * exactes.
    * @return Liste de CessionStatuts.
    */
   @Override
   public List<CessionStatut> findByStatutLikeManager(String statut, final boolean exactMatch){

      log.debug("Recherche CessionStatut par " + statut + " exactMatch " + String.valueOf(exactMatch));
      if(statut != null){
         if(!exactMatch){
            statut = statut + "%";
         }
         return cessionStatutDao.findByStatut(statut);
      }else{
         return new ArrayList<>();
      }

   }

}
